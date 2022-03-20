@istest
public class test_class_4 {
    @istest
    static void testme(){
        apex_class_4 ac=new apex_class_4();
        ac.callme();
           system.assertequals(30000,ac.amount);
         system.assertequals(system.today()+15,ac.closedate);
        ac.stagename='prospecting';
        ac.callme();
        system.assertequals(50000,ac.amount);
         system.assertequals(system.today(),ac.closedate);
            
        
    }

}