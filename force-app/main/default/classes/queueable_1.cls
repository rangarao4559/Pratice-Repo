public class queueable_1 implements queueable {
    public void execute(queueablecontext qc){
        list<account>acclist=[select id,name,rating from account where createddate=today];
        for(account a:acclist){
            a.rating='hot';
        }
        update acclist;
    }    

}