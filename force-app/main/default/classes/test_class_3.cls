@istest
public class test_class_3 {
    @istest
    static void testme(){
        apex_class_3 ac=new apex_class_3();
            ac.callme();
        system.assertequals('warm',ac.rating);
         system.assertequals('private',ac.ownership);
        ac.industry='banking';
         ac.callme();
         system.assertequals('hot',ac.rating);
         system.assertequals('public',ac.ownership);
        
    
        } 
        
    

}