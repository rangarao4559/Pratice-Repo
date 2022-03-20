public class picklist_example_3 {
    public list<selectoption>options {set;get;}
    public string selected {set;get;}
    public string result {set;get;}
    public picklist_example_3 (){
        options=new list<selectoption>();
        list<Account>accounts=[select id,name from Account];
        for(Account a:accounts){
            selectoption op=new selectoption(a.name,a.name);
            options.add(op);
            
        }
    }
    public void call(){
        result='u selected'+selected;
    }
    

}