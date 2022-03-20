public class batchdynamic_2 {
    public string query {set;get;}
    public string fieldname {set;get;}
     public string val {set;get;}
    public void invoke(){
        batch_2 be=new batch_2(query,fieldname,val);
        id jobid=database.executebatch(be,4);
        asyncapexjob job=[select id,status from asyncapexjob where id=:jobid];
        system.debug('status:'+job);
    }
}