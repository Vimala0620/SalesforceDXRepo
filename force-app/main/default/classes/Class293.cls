/**
 * @description
 * Sample class to intentionally trigger a single S2 violation
 * using a hardcoded Salesforce Id.
 *
 * This class is otherwise fully compliant with
 * PMD CodeStyle and ApexDoc rules.
 */
public class Class293 {

    /**
     * Returns a hardcoded Account Id.
     *
     * @return Id Account Id value
     */
    public Id getAccountId() {
        Id accountId = '001000000000001AAA';
        return accountId;
    }
}