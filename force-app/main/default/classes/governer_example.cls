public class governer_example {
    public void callme(){
        list<Account>accounts=[select id from Account];
        list<Contact>contacts=[select id from Contact]; 
        for(integer i=1;i<=50;i++){
            list<opportunity>optylist=[select id,name from opportunity];
        }
    }
    public void soqllimits(){
        for(integer i=1;i<=50;i++){
            list<lead>leads=[select id,lastname,firstname from lead];
        }
       callme(); 
    }
    public void show(){
        Account acc =new Account();
        acc.Name='Tsting';
        acc.Phone='040-1234';
        insert acc;
        update acc;
        delete acc;
        undelete acc;
        for(Integer i=1;i<=150;i++){
            Contact c=new Contact();
            c.LastName='M';
            c.FirstName='Satish';
            c.Phone='1234';
            insert c;
        }
    }
      public void dmlRecords(){
        List<Account> accounts =new List<Account>();
        for(Integer i=1;i<=5000;i++){
            Account acc =new Account();
            acc.Name='Testing';
            acc.Phone='040-1234';
            accounts.add(acc);
        }
        insert accounts;
        update accounts;
        delete accounts;
    }
    public void soqlRows(){
        List<Account> accounts =[select id,Name from Account];
        List<Contact> contacts =[select id ,lastname,firstname from Contact];
        
    }
  
}