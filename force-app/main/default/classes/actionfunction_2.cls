public class actionfunction_2 {
    public string accountname {set;get;}
     public string accountnumber {set;get;}
    public pagereference call(){
        Account acc=new Account();
        acc.Name=accountname;
        acc.AccountNumber=accountnumber;
        insert acc;
        pagereference p=new pagereference('/'+acc.Id);
        return p;
    }
}