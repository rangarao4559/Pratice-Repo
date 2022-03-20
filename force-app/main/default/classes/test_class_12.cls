@istest
public class test_class_12 {
    @istest
    public static void testme(){
        string cron='0 30 10 15 * ?';
        test.startTest();
       apex_class_112 ae=new apex_class_112();
        id jobid=system.Schedule('testing',cron,ae);
        test.stopTest();
        crontrigger ct=[select id,cronexpression from crontrigger where id=:jobid];
        system.assertEquals(cron,ct.cronexpression);
        integer count=[select count()from Account];
        system.assertEquals(0,count);
        
    }

}