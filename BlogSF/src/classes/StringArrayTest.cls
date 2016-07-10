public class StringArrayTest {
    
    public static List<String> generateStringArray (Integer plength){

        List<String> result = new List<String>();
        String text = '';        
        for(Integer i=0;i<plength;i++) {            
            text = 'Test ' + i;
		    result.add(text);            
        }
        return result;        
    }
}