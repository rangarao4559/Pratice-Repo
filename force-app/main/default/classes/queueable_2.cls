public class queueable_2 implements queueable {
    public void execute(queueablecontext qc){
        list<account>acclist=[select id,name from account where createddate=today];
        delete acclist;
    }

}