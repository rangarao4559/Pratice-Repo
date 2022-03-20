public class myexample_1 {
    public list<selectoption>options {set;get;} 
    public string selected {set;get;}
    public myexample_1(){
        options=new list<selectoption>();
        
        list<Account>accounts=[select id,name,industry from Account];
            for(Account a:accounts){
                selectoption op=new selectoption(a.name,a.name);
                options.add(op);
            }
    }

}