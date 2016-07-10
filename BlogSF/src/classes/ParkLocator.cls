public class ParkLocator {
    public static List<String> country(String nameCountry){        
        ParkService.ParksImplPort p = new ParkService.ParksImplPort(); 
        return p.byCountry(nameCountry);
    }
}