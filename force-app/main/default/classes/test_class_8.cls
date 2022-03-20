@istest
public class test_class_8 {
    @istest
    static void testme(){
        test_data.create();
        apex_class_8 ac=new apex_class_8();
        ac.updatedate();
         list<Account>accounts=[select id,name,phone from Account];
        for(Account a:accounts){
            system.assertequals('2222',a.phone);
        }
        
        
    }

}