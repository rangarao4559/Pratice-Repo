public class action_poolerexample {
    public String result  {set;get;}
    public Integer count    {set;get;}
    public action_poolerexample(){
        count=0;
        result='Time Stamp :'+system.now()+' ===> Count :'+count;
    }
    public void invoke(){
         count=count+1;
        result='Time Stamp :'+system.now()+' ===> Count :'+count;
    }
}