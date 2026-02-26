public class AccountViolationsClass {

    public static void updateAccount(Id accId) {

        try {

            // Avoid hardcoded ID
            Account acc = [SELECT Id, Name FROM Account WHERE Id = :accId LIMIT 1];

            acc.Name = 'Updated Name';

            update acc;

        } catch (QueryException qe) {
            System.debug('Query Error: ' + qe.getMessage());

        } catch (DmlException de) {
            System.debug('DML Error: ' + de.getMessage());

        } catch (Exception e) {
            System.debug('General Error: ' + e.getMessage());
        }
    }
}