public class actionfunction_example {
    public String lastName  {Set;get;}
    public String firstName  {set;get;}
    public String company  {set;get;}
    public PageReference create(){
        Lead l=new Lead();
        l.lastName=lastName;
        l.firstName=firstName;
        l.company=company;
        insert l;
        PageReference p=new PageReference('/'+l.id);
        return p;
            
    }

    

}