@isTest
private class ParkLocatorTest {
    @isTest static void testCallout() {                      
        Test.setMock(WebServiceMock.class, new ParkServiceMock());                     
        System.assertEquals(new List<String>{'Anamudi Shola National Park', 'Anshi National Park', 'Bandipur National Park'}, ParkLocator.country('India'));      
    }
}