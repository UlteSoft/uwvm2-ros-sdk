/**
 * @file CommandOutput.java
 * @brief Represent the complete original ABB ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.abb;

import uwvm.ros.Client;

/**
 * @brief Emit one complete observation report as a machine-readable JSON line.
 * @details This guest-only formatter does not implement ROS transport. Every
 * canonical response byte is retained as hex; no nested state field is omitted.
 */
public final class CommandOutput
{
    /** @brief Prevent creation of this stateless output facade. */
    private CommandOutput()
    {
    }

    /**
     * @brief Write complete independent operation and cleanup facts to WASI stdout.
     * @param result Borrowed completed report with an optional fully decoded response.
     * @return First operation/cleanup/output error clamped to 125; zero includes flush.
     * @details No handle is acquired. A controller refusal still prints its entire
     * response. A failed flush becomes errno 5 only if no earlier error exists.
     */
    public static int write(Observation.Result<?> result)
    {
        Client.Exchange facts = result.exchange;
        StringBuilder text = new StringBuilder();
        text.append("{\"primary\":")
            .append(facts.primary)
            .append(",\"cleanup\":")
            .append(facts.cleanup)
            .append(",\"cleanup_present\":")
            .append(facts.cleanupPresent ? 1 : 0)
            .append(",\"response_present\":")
            .append(result.response != null ? 1 : 0)
            .append(",\"rpc_present\":")
            .append(facts.rpcPresent ? 1 : 0)
            .append(",\"rpc_status\":")
            .append(facts.rpcStatus)
            .append(",\"required_present\":")
            .append(facts.requiredPresent ? 1 : 0)
            .append(",\"required\":")
            .append(facts.required)
            .append(",\"encoding\":0,\"wire_hex\":\"");
        if(result.response != null)
        {
            String digits = "0123456789abcdef";
            for(byte item: facts.wire)
            {
                text.append(digits.charAt((item & 255) >>> 4));
                text.append(digits.charAt(item & 15));
            }
        }
        text.append("\"}");
        System.out.println(text.toString());
        System.out.flush();
        int status = facts.status();
        if(status == 0 && System.out.checkError())
        {
            status = 5;
        }
        return status < 0 || status > 125 ? 125 : status;
    }
}
