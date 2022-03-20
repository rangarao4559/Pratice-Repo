public class soql_example_12 {
    public string searchtext {set;get;}
    public list<Account>accounts {set;get;}
    public void search(){
        accounts=[select id,name,phone,industry,rating from account where industry=:searchtext];
    }
}