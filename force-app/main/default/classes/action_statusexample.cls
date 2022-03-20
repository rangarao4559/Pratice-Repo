public class action_statusexample {
    public void callMe(){
        List<Account> accounts =new List<Account>();
        for(Integer i=0;i<=10004;i++){
            Account acc =new Account();
            acc.Name='Account:'+i;
            acc.Phone='040-123';
            accounts.add(acc);
        }
        insert accounts;
    }
}