public class apex_class_6 {
    public string name;
    public string optytype;
    public void callme(){
        opportunity op=new opportunity();
        op.name=name;
        op.type=optytype;
        op.StageName='prospecting';
        op.CloseDate=system.today();
        insert op;  
    }

}