public class NewCaseListController {
    
    public List<Case> cases{get;set;}
    
    public NewCaseListController(){
        cases = [SELECT ID, CaseNumber FROM Case WHERE Status = 'New'];          
    }
    
    public List<Case> getNewCases(){
        return cases;
    }    
}