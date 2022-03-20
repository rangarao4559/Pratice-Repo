public class listexample_1 {
    public list<Account>accounts {set;get;}
    public listexample_1(){
        accounts=new list<Account>();
        account a1=new account();
        a1.phone='1234';
        a1.name='sygsh';
        a1.industry='energy';
        account a2=new account();
        a2.name='ravi';
        a2.phone='12345';
        a2.industry='wind';
        Accounts.add(a1);
        Accounts.add(a2);
    }

}