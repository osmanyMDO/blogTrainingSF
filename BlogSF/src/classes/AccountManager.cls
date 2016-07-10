/*
To pass this challenge, create an Apex REST class that is accessible at '/Accounts/<Account_ID>/contacts'. 
The service will return the account's ID and Name plus the ID and Name of all contacts associated with the account. 
*/
@RestResource(urlMapping='/Account/*')
global with sharing class AccountManager {
    
    @HttpGet
    global static Account getAccount () {
       RestRequest request = RestContext.request;
        // grab the caseId from the end of the URL
        String accountId = request.requestURI.substring(
          request.requestURI.lastIndexOf('/')+1);
        Account result =  [SELECT ID, (SELECT Name FROM Contacts) FROM Account WHERE ID = :accountId];
        return result;       
    } 
}