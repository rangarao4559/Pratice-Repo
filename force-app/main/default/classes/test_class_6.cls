@istest
public class test_class_6 {
    @istest
    static void testme(){
        apex_class_6 ac=new apex_class_6();
        ac.name='ranga';
        ac.optytype='newcustomer';
        ac.callme();
        opportunity opt=[select name,stagename,closedate,type from opportunity];
                system.assertEquals('ranga', opt.name);
        system.assertequals('newcustomer',opt.type);
                system.assertEquals('prospecting', opt.stagename);
        system.assertequals(system.today(),opt.closedate);
            
        
    }
    

}