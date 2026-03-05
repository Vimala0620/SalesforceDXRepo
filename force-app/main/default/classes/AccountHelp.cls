public with sharing class AccountHelp {
    
    // Method to create an Account record
    public static Account createAccount(String accName, String phone) {
        Account acc = new Account(
            Name = accName,
            Phone = phone
        );
        insert acc;
        return acc;
    }

    // Method to update the phone number of an existing Account
    public static void updateAccountPhone(Id accId, String newPhone) {
        Account acc = [SELECT Id, Name, Phone FROM Account WHERE Id = :accId LIMIT 1];
        acc.Phone = newPhone;
        update acc;
    }

    // Method to fetch all Accounts created today
    public static List<Account> getTodaysAccounts() {
        return [SELECT Id, Name, Phone, CreatedDate 
                FROM Account 
                WHERE CreatedDate = TODAY];
    }
}