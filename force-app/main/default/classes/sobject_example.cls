public class sobject_example {
    public Account acc{set;get;}
    public Contact con{set;get;}
    public sobject_example(){
        acc=new Account();
        con=new Contact();
    }

}