public class apex_class_2 {
public string industry;
    public string rating;
    public date closedate;
    
    public void callme(){
        rating='hot';
        industry='banking';
        closedate=system.today();
        
    }
    public void invoke(){
         rating='warm';
        industry='energy';
        closedate=system.today()+15;

    }
}