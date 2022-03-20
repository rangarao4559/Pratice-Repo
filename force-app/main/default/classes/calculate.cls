public class calculate{
    public integer aval{set;get;}
    public integer bval {set;get;}
        public integer result {set;get;}
    public void add(){
        result=aval+bval;
    }
    public void cancel(){
        aval=0;
        bval=0;
        result=null;
    
    }
}