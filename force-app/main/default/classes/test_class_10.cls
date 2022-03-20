@istest 
public class test_class_10 {
@istest
    static void testme(){
        Account_test.create();
        test.startTest();
        Apex_Example_10 ae=new Apex_Example_10();
        id jobid=database.executeBatch(ae,5);
        test.stopTest();
        Account acc=[select id,type from Account];
        system.assertEquals('new customer',acc.type);
    }
}