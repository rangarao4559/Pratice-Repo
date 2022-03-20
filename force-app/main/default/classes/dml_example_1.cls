public class dml_example_1 {
    public account acc {set;get;}
    public dml_example_1 (){
        acc=new account();
    }
    public pagereference create(){
        integer count=[select count() from account where name=:acc.name];
        if (count>0){
            apexpages.message msg=new ApexPages.message(apexpages.severity.error,'duplicate record found');
            apexpages.addMessage(msg);
            return null;
        }
        else{
            insert acc;
            pagereference p=new pagereference('/'+acc.id);
            return p;
        }
    }
    public pagereference cancel(){
 
         pagereference p=new pagereference('/003/o');
        return p;
    }

}