public class Accountnotes { 
    public list<Account> acc{set;get;} 
    public list<id> ids {set;get;}
    public  Accountnotes(){
        list<Account> acc=new list<Account>{[select id,Name from Account ]};
            
            for(Account a:acc){
             ids.add(a.Id);
            }
        
   
        }
}