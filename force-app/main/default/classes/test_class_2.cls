@istest
public class test_class_2 {
    @istest
    static void testme(){
        apex_class_2  ac=new apex_class_2();
        ac.callme();
         system.assertequals('hot',ac.rating);
        system.assertequals('banking',ac.industry);
         system.assertequals(system.today(),ac.closedate);
        ac.invoke();
         system.assertequals('energy',ac.industry);
        system.assertequals('warm',ac.rating);
         system.assertequals(system.today()+15,ac.closedate);
    
     
    }
    

}