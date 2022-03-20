public class soql_example_11 {
    public List<Account> accounts {set;get;}
    public SOQL_Example_11(){
        accounts =[select Name,Phone,Industry ,Rating from Account limit 5];

    }
}