public class action_example {
    public string name   {set;get;}
    public String place {set;get;}
    public string result {set;get;}
    public void callMe(){
        result='Your Name:'+name+' :place:'+place;
    }
}