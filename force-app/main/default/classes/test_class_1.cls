@isTest
public class test_class_1 {
    @isTest
    static void testme(){
        Apex_class_1 ae=new Apex_class_1();
        ae.callme();
        system.assertequals('satish',ae.name);
        system.assertequals('1232',ae.phone);
    }

}