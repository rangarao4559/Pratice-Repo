public class soql_example_3 {
    public list<Account>accounts {set;get;}
    public soql_example_3(){
        accounts=[select id,name,phone,industry from account];
    }
    public void nameASC(){
        accounts=[select id,name,phone,industry from account order by Name ASC ]; 
    }
    public void nameDESC(){
         accounts=[select id,name,phone,industry from account order by Name DESC];
    }
    public void phoneASC(){
         accounts=[select id,name,phone,industry from account order by name ASC,phone DESC];
        
    }

}