public class Queue_Example implements Queueable{
    public void execute(QueueableContext qc){
         List<Account> accounts =[select Id,Name,rating from Account where CreatedDate=LAST_WEEK];
         for(Account a: accounts){
            a.Rating='Hot';   
         }
       
 update accounts;
        
}
}