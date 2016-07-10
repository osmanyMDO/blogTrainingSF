public class AccountHandler {
    public static Account insertNewAccount(String pname){
        try{
  
            Account acct = new Account(Name = pname );
            insert acct; 
            return acct;  

        }catch(DmlException e) {
        	return null;
        } 
    }
}