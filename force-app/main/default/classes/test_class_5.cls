@istest
public class test_class_5 {
    @istest
    static void testme(){
        apex_class_5 ac=new apex_class_5();
        ac.name='testing';
        ac.industry='energy';
        ac.create();
      integer count=[select count() from Account where name=:ac.name and industry=:ac.industry];
        system.assertEquals(1,count);
    }

}