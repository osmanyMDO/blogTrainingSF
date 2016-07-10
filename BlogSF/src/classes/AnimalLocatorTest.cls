@isTest
private class AnimalLocatorTest {
    @isTest static void testCallout() {
        Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());
        
        HttpResponse res = AnimalLocator.getInfoFromExternalService(1);
       
        // Verify response received contains fake values
        String contentType = res.getHeader('Content-Type');
        System.assert(contentType == 'application/json');
        String actualValue = res.getBody();
        String expectedValue = '{"animal":{"id":1,"name":"chicken","eats":"chicken food","says":"cluck cluck"}}';
        System.assertEquals(actualValue, expectedValue);
        System.assertEquals(200, res.getStatusCode());
        
        String name = AnimalLocator.getAnimalNameById(1);
        System.assertEquals('chicken', name);        
    }
}
/*
Create a test class named AnimalLocatorTest that uses a mock class called AnimalLocatorMock to mock the callout response.
The unit tests must cover all lines of code included in the AnimalLocator class, resulting in 100% code coverage.
Run your test class at least once (via 'Run All' tests the Developer Console) before attempting to verify this challenge.
*/