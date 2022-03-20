public class Queue_Example_2 implements Queueable{
    public void execute(QueueableContext ac){
        List<Account> accounts =[select Id,Name from Account where createdDate=THIS_WEEK];
        delete accounts;
    }
}