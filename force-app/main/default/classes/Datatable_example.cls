public class Datatable_example {
    public List<Account> accounts {set;get;}
    public Datatable_example(){
        accounts =[select Id,Name,Phone,Industry,Rating from Account limit 5];
    }
}