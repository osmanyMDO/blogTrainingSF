trigger AccountAddressTrigger on Account (before insert, before update) {
    Account a = Trigger.New[0];
    if(a.Match_Billing_Address__c)
        a.ShippingPostalCode = a.BillingPostalCode;   
}