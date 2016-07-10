trigger ClosedOpportunityTrigger on Opportunity (before insert, before update) {
    List<Opportunity> oppList = new List<Opportunity>();

    for (Opportunity op : [SELECT Id FROM Opportunity WHERE Id IN :Trigger.New AND StageName = 'Closed Won']) {

        //code for task
        
    }
    if (oppList.size() > 0) {
        insert oppList;
    }
}