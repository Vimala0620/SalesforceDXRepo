trigger AccountViolationTrigger on Account (after insert) {

    for (Account acc : Trigger.new) {

        // ❌ SOQL inside loop
        Account a = [SELECT Id, Name FROM Account WHERE Id = :acc.Id];

        a.Name = 'Violation Trigger';

        // ❌ DML inside loop
        update a;

        // ❌ Unnecessary debug
        System.debug('Updated Account: ' + a.Id);
    }
}