public class Example4 {
    public integer noOFRecords{set;get;}
    public List<Account> accs {set;get;}
    public Example4(){
    accs=new List<Account>();
    }
    public void create(){
        integer i;
        for(i=0;i<noOFRecords;i++){
            account a=new account();
            accs.add(a);
        }
    }
    public pagereference save(){
        if(accs.size()>0){
            insert accs;
        }
        return null;
    }
}