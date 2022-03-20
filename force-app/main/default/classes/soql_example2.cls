public class soql_example2 {
    public list<Contact>contacts {set;get;}
    public soql_example2(){
        contacts=[select lastname,phone,firstname from contact limit 5];
    }



}