public class ContactAndLeadSearch {
    public static List<List< SObject>> searchContactsAndLeads(String cadena){ 
        List<List<sObject>> searchResult = [FIND :cadena IN NAME FIELDS RETURNING Contact(FirstName, LastName WHERE LastName = :cadena), Lead(FirstName, LastName WHERE LastName = :cadena)  ];
        System.debug(searchResult);
        return searchResult;
    }    
}