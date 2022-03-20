public class Example3 {
    public integer noOFRecords{set;get;}
    public List<Account> accs {set;get;}
    public List<contact> cons {set;get;}
    public Example3(){
        accs=new List<Account>();
        cons=new List<Contact>();
    }
    public void create(){
        integer i;
        for(i=0;i<10;i++){
            Account a=new Account();
            accs.add(a);
        }
        
    }
    public pagereference save(){
        insert accs;
        contact c=new contact();
        cons.add(c);
        return null;
    }
}