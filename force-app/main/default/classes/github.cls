public class github {
  // Method to create an account and return its Id
    public static Id createAccount(String accName) {
        if (String.isBlank(accName)) {
            throw new AuraHandledException('Account name cannot be blank');
        }

        Account acc = new Account(
            Name = accName
        );

        insert acc;
        return acc.Id;
    }

}