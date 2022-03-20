public class custom_comp_example {
    public list<Account>accounts {set;get;}
    public list<Contact>contacts {set;get;}

    public list<string>accfields {set;get;}
 public list<string>confields {set;get;}
    public custom_comp_example(){
        accounts=[select id,name,phone,industry,rating from Account limit 5];
                contacts=[select id,lastname,firstname,phone,email from Contact limit 5];
        accfields=new list<string>{'name','industry','phone','rating'};
            confields=new list<string>{'lastname','firstname','phone','email'};
    }
}