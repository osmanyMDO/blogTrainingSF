public class AccountProcessor {
    @future
    public static void countContacts() {
       
        Id test1 = '0013600000QeqPn';
        Id test2 = '0013600000QeqPj';
        Id test3 = '0013600000QeqPm';
        List<Id> testList = new List<Id>();
        testList.add(test1);
        testList.add(test2);
        testList.add(test3);
        
        System.debug(testList);  
        
        Integer cant = 0;
        for (Account[] tmp : [SELECT Id, Name, (SELECT Id,Name FROM Contacts) FROM Account WHERE Id IN :testList]) {

        }
        
        
        
        /*Id test1 = '0013600000QeqPn';
        Id test2 = '0013600000QeqPj';
        Id test3 = '0013600000QeqPm';
        List<Id> testList = new List<Id>();
        testList.add(test1);
        testList.add(test2);
        testList.add(test3);
        
        System.debug(testList);  
        
        Account[] acc = [Select Id, Name, (Select Id,Name from Contacts) from Account Where Id IN :testList];  
		
        System.debug(acc);         
        Contact[] cts = acc[0].Contacts;
        Integer l = cts.size();
        
        System.debug(l);
        
        for(Integer i=0;i<cts.size();i++){
            System.debug(cts[i]);
        } */      
    }
}