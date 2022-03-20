@istest
public class test_class_11 {
@istest
    public static void testme(){
        opportunity op=new opportunity();
        op.name='testing';
        op.stagename='prosepecting';
        op.closedate=system.today();
        insert op;
        apex_example_11 ae=new apex_example_11();
        test.startTest();
        id jobid=database.executeBatch(ae,5);
        
        test.stoptest();
        opportunity opt=[select id,stagename,closedate from opportunity];
        system.assertEquals('closedwon',opt.stagename);
        system.assertEquals(system.today()+15,opt.closedate);
    }
}