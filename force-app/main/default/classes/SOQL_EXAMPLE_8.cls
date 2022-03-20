public class SOQL_EXAMPLE_8 {
    public list<Account>accounts {set;get;}
    public string searchtext {set;get;}
    public void search(){
        string query='select id,name,phone,industry from Account where name like \'%';
        query=query+searchtext+'%\'';
        accounts=Database.query(query);
    }
}