@istest
public class test_example_14 {
@istest
    static void testme(){
        Account_test.create();
        Account acc=[select id,rating from Account];
        acc.rating='hot';
        update acc;
        user u=[select id from user where alias='mteja'];
        Accountteammember atm=[select Accountid,userid,teammemberrole,Accountaccesslevel from Accountteammember];
        system.assertEquals(acc.id,atm.Accountid);
         system.assertEquals(u.id,atm.userid);
         system.assertEquals('Account Manager',atm.teammemberrole);
         system.assertEquals('read',atm.AccountAccesslevel);
    }
}