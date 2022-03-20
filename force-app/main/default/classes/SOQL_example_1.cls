public class SOQL_example_1 {
    public list<Account>accounts {set;get;}
    public SOQL_example_1(){
        accounts=[select name,phone,industry from Account];
    }

}