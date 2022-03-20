public class apex_class_5 {
    public string name;
    public string industry;
    public void create(){
        Account acc=new Account();
        acc.name=name;
        acc.industry=industry;
        insert acc;
    }
    

}