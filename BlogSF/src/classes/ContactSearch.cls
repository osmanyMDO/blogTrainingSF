public class ContactSearch {
    public static List<Contact> searchForContacts (String pLastName, String pZIP) {

        List<Contact> result = [SELECT Id,Name FROM Contact WHERE LastName=:pLastName AND MailingPostalCode=:pZIP];        
        System.debug(result);
        return result;        
    } 
}