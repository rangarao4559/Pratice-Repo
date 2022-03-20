public class soql_example_6 {
    public list<Account>accounts {set;get;}
    public integer start {set;get;}
    public integer size {set;get;}
    public  soql_example_6(){
        accounts=[select id,name,phone,rating,industry from Account];
    }
    public void setoffvalue(){
        
        accounts=[select id,name,phone,rating,industry from Account offset 10];
        
    }
    public void fetchdata(){
        accounts=[select id,name,phone,rating,industry from Account limit:size offset:start];
    }
    public void fetchalldata(){
        accounts=[select id,name,phone,rating,industry from Account ALL ROWS];
    }
}