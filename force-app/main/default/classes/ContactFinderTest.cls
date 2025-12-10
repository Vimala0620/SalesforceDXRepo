@IsTest
private class ContactFinderTest {

    @IsTest
    static void testGetContactsByLastName() {

        // Test data
        Contact c = new Contact(FirstName = 'John', LastName = 'Doe');
        insert c;

        // Test method
        List<Contact> result = ContactFinder.getContactsByLastName('Doe');
        System.assertEquals(1, result.size());
        System.assertEquals('Doe', result[0].LastName);
    }
}