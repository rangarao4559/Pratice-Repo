@istest
public class test_class_13 {
@istest
    public static void testme(){
        Account acc=new Account();
        acc.name='testing';
        acc.phone='1234';
        insert acc;
        Account act=[select id,ownership,rating from Account where id=:acc.id];
        system.assertEquals('hot',act.rating);
        system.assertEquals('public',act.ownership);
    }
}