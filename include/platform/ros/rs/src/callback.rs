//! Private source-independent dispatch core, also used by native fake fixtures.
//! It validates canonical bodies/owned IDs and guards before polling. Actual
//! Server methods supply their real capability imports; tests supply counters,
//! without creating a second public/mock backend or weakening native authority.
use crate::{codec, codes, Error};
use core::cell::Cell;

pub(crate) fn idle(spinning: &Cell<bool>) -> Result<(), Error> {
    if spinning.get() {
        Err(Error::new(codes::CONFLICT))
    } else {
        Ok(())
    }
}
struct Reset<'a>(&'a Cell<bool>);
impl Drop for Reset<'_> {
    fn drop(&mut self) {
        self.0.set(false);
    }
}
/// Keep a capability's shared retirement state busy until callback dispatch ends.
/// Request/response imports remain allowed; close/revoke must check this state.
pub(crate) struct OwnerGuard<'a>(&'a Cell<bool>);
impl Drop for OwnerGuard<'_> {
    fn drop(&mut self) {
        self.0.set(false);
    }
}
pub(crate) fn guard_owner(busy: &Cell<bool>) -> Result<OwnerGuard<'_>, Error> {
    if busy.replace(true) {
        return Err(Error::new(codes::CONFLICT));
    }
    Ok(OwnerGuard(busy))
}
/// Preflight the entire ownership group before retiring even its first handle.
/// A refusal leaves local factories/owners open for later checked cleanup.
pub(crate) fn cleanup_idle<'a>(
    owners: impl IntoIterator<Item = (bool, &'a Cell<bool>)>,
) -> Result<(), Error> {
    for (live, busy) in owners {
        if live {
            idle(busy)?;
        }
    }
    Ok(())
}
pub(crate) fn service_once(
    spinning: &Cell<bool>,
    input: &mut [u8],
    output: &mut [u8],
    poll: impl FnOnce(&mut [u8]) -> Result<usize, Error>,
    respond: impl FnOnce(&[u8]) -> Result<(), Error>,
    handler: impl FnOnce(codec::RequestId, &[u8], &mut [u8]) -> Result<usize, Error>,
) -> Result<bool, Error> {
    if spinning.replace(true) {
        return Err(Error::new(codes::CONFLICT));
    }
    let _reset = Reset(spinning);
    let count = match poll(input) {
        Ok(count) => count,
        Err(error) if error.code == codes::AGAIN => return Ok(false),
        Err(error) => return Err(error),
    };
    if count > input.len() {
        return Err(Error::new(codes::INVALID));
    }
    let request = codec::decode_service_request(&input[..count])?;
    let used = handler(request.id, request.request, output)?;
    if used > output.len() || used < 13 || output[..8] != request.id.raw().to_le_bytes() {
        return Err(Error::new(codes::INVALID));
    }
    codec::decode_service_response(&output[8..used])?;
    respond(&output[..used])?;
    Ok(true)
}
pub(crate) fn goal_once(
    spinning: &Cell<bool>,
    poll: impl FnOnce() -> Result<(codec::GoalId, i32), Error>,
    handler: impl FnOnce(codec::GoalId, i32) -> Result<(), Error>,
) -> Result<bool, Error> {
    if spinning.replace(true) {
        return Err(Error::new(codes::CONFLICT));
    }
    let _reset = Reset(spinning);
    match poll() {
        Ok((id, order)) => {
            handler(id, order)?;
            Ok(true)
        }
        Err(error) if error.code == codes::AGAIN => Ok(false),
        Err(error) => Err(error),
    }
}
