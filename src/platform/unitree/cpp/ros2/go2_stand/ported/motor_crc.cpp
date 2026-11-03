#include "motor_crc.h"
#include <bit>
#include <cstddef>
#include <cstring>
#include <type_traits>

// The manufacturer's raw motor packet has a fixed little-endian layout.
static_assert(std::endian::native == std::endian::little);
static_assert(std::is_trivially_copyable_v<LowCmd>);
static_assert(sizeof(LowCmd) == 812 && alignof(LowCmd) == 4);
static_assert(offsetof(LowCmd, crc) == 808);

void get_crc(unitree_go::msg::LowCmd& msg) {
  LowCmd raw{};
  // Include deterministic zero padding in the original raw-packet CRC.
  std::memset(&raw, 0, sizeof raw);
  memcpy(&raw.head[0], &msg.head[0], 2);

  raw.levelFlag = msg.level_flag;
  raw.frameReserve = msg.frame_reserve;

  memcpy(&raw.SN[0], &msg.sn[0], 8);
  memcpy(&raw.version[0], &msg.version[0], 8);

  raw.bandWidth = msg.bandwidth;

  for (int i = 0; i < 20; i++) {
    raw.motorCmd[i].mode = msg.motor_cmd[i].mode;
    raw.motorCmd[i].q = msg.motor_cmd[i].q;
    raw.motorCmd[i].dq = msg.motor_cmd[i].dq;
    raw.motorCmd[i].tau = msg.motor_cmd[i].tau;
    raw.motorCmd[i].Kp = msg.motor_cmd[i].kp;
    raw.motorCmd[i].Kd = msg.motor_cmd[i].kd;

    memcpy(&raw.motorCmd[i].reserve[0], &msg.motor_cmd[i].reserve[0], 12);
  }

  raw.bms.off = msg.bms_cmd.off;
  memcpy(&raw.bms.reserve[0], &msg.bms_cmd.reserve[0], 3);

  memcpy(&raw.wirelessRemote[0], &msg.wireless_remote[0], 40);

  memcpy(&raw.led[0], &msg.led[0], 12);  // go2
  memcpy(&raw.fan[0], &msg.fan[0], 2);
  raw.gpio = msg.gpio;  // go2

  raw.reserve = msg.reserve;

  // Copy object bytes into actual uint32_t objects instead of aliasing a struct.
  std::array<uint32_t, sizeof(LowCmd) / sizeof(uint32_t)> words{};
  std::memcpy(words.data(), &raw, sizeof raw);
  raw.crc = crc32_core(words.data(), words.size() - 1);
  msg.crc = raw.crc;
}

uint32_t crc32_core(uint32_t* ptr, uint32_t len) {
  uint32_t xbit = 0;
  uint32_t data = 0;
  uint32_t CRC32 = 0xFFFFFFFF;
  const uint32_t dwPolynomial = 0x04c11db7;
  for (uint32_t i = 0; i < len; i++) {
    xbit = 1U << 31;
    data = ptr[i];
    for (uint32_t bits = 0; bits < 32; bits++) {
      if (CRC32 & 0x80000000) {
        CRC32 <<= 1;
        CRC32 ^= dwPolynomial;
      } else
        CRC32 <<= 1;
      if (data & xbit) CRC32 ^= dwPolynomial;

      xbit >>= 1;
    }
  }
  return CRC32;
}