public class soql_example_13 {
    public list<Account>accounts  {set;get;}
    public string searchtext {set;get;}
    public void search(){
        accounts=[select id,name,phone,industry,(select lastname,firstname from contacts)from account where industry=:searchtext limit 10 ];
    }

}