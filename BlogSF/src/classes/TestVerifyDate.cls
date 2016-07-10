@isTest
public class TestVerifyDate {
     @isTest static void testCheckDates1() {
         Date date1 = Date.today();
         Date date2 = date1+15;           
         Date d = VerifyDate.CheckDates(date1, date2);
        System.assertEquals(date2,d);
    }
    
     @isTest static void testCheckDates2() {
         Date date1 = Date.today();
         Date date2 = date1+45;         
         Integer totalDays = Date.daysInMonth(date1.year(), date1.month());
         Date lastDay = Date.newInstance(date1.year(), date1.month(), totalDays);                  
         Date d = VerifyDate.CheckDates(date1, date2);
         System.assertEquals(lastDay,d);
    }
}