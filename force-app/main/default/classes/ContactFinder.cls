public class ContactFinder {
    public static List<Contact> getContactsByLastName(String lastName) {
        return [
            SELECT Id, FirstName, LastName
            FROM Contact
            WHERE LastName = :lastName
        ];
    }
}