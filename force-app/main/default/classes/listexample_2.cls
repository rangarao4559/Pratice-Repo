public class listexample_2 {
    public Account acc{set;get;}
    public list<Account>accounts{set;get;}
    public listexample_2(){
        acc=new Account();
        accounts=new list<Account>();
    }
    public void addrow(){
        accounts.add(acc);
        acc=new Account();
    }

}