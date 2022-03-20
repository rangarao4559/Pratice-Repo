@istest
public class test_class_7 {
    @istest
    static void testme(){
        apex_class_7 ac=new apex_class_7();
        ac.acc.name='testing';
        ac.acc.phone='2222';
        ac.create();
        Account count=[select id,name,phone from Account where id=:ac.acc.id ];
        system.assertEquals('testing',count.name);
        system.assertEquals('2222',count.phone);
    }
    

}