public class AnimalLocator {
    public static String getAnimalNameById (Integer pId){
        String name;
        HttpResponse response = getInfoFromExternalService(pId);
        if (response.getStatusCode() == 200) {                
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());            
            Map<String, Object> animal = (Map<String, Object>) results.get('animal');             
            name = (String)animal.get('name');            
        } 
        return name;
    }
    
    public static HttpResponse getInfoFromExternalService(Integer pId) {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+pId);
        request.setMethod('GET');
        HttpResponse response = http.send(request);   
        return response;
    }    
}