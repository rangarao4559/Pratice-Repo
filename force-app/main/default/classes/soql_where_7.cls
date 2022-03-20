public class soql_where_7 {
    public list<Account>accounts {set;get;}
    public string searchtext {set;get;}
    public soql_where_7(){
        accounts=[select id,name,phone,industry,rating,ownership from Account];
    }
    public void search(){
         accounts=[select id,name,phone,industry,rating,ownership from Account where rating=:searchtext];
    }
    public void fetchenergy(){
         accounts=[select id,name,phone,industry,rating,ownership from Account where industry='energy'];
    }
    public void fetcheducation(){
         accounts=[select id,name,phone,industry,rating,ownership  from Account where industry='education'];
    }
    public void fetchownership(){
         accounts=[select id,name,phone,industry,rating,ownership from Account where ownership='public' ];
    }
}