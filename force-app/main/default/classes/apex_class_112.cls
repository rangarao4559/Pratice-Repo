public class apex_class_112 implements schedulable{
    public void execute(schedulablecontext sc){
        list<Account>accounts=[select id from Account];
        delete accounts;
    }  
}