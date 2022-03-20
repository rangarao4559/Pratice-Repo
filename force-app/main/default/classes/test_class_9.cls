@istest
public class test_class_9 {
@istest
    static void testme(){
        apex_class_9 ac=new apex_class_9();
Account_test.create();
        ac.accindustry='energy';
        ac.updatedata();
        user u=[select id from user where alias='mteja' ];
        list<Account>accounts=[select id,ownerid from Account where industry=:ac.accindustry];
        for(Account a:accounts){
            system.assertEquals(u.id,a.ownerid);
        }
        
    }
}