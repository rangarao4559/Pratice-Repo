public class pagereference_exam {
    public string name{set;get;}
    public integer age{set;get;}
    public void invoke(){
        if(name!=''&& age!=0)  {
            Apexpages.Message m1=new Apexpages.Message(Apexpages.Severity.CONFIRM,'success');
            Apexpages.addMessage(m1);
        }
        else{
            if(name==''){
                 Apexpages.Message m2=new Apexpages.Message(Apexpages.Severity.ERROR,'name is required');
            Apexpages.addMessage(m2);
                
            }
            if(age<=0){
                 Apexpages.Message m3=new Apexpages.Message(Apexpages.Severity.ERROR,'age is required');
            Apexpages.addMessage(m3);
            }
        }
        }
    public PageReference cancel(){
        PageReference p=new PageReference('/home/home.jsp');
        return p;
    }
}