public class example_4 {
    public integer a {set;get;}
    public integer b {set;get;}
    public integer c {set;get;}
    public String operation {set;get;}
    public example_4(){
        a=0;
        b=0;
        c=0;
        operation = '';
    }
    
    public void add(){
        c=a+b;
    }
    public void sub(){
        c=a-b;
    }
    public void mul(){
        c=a*b;
    }
    public void calculate(){
        if(operation=='mul'){
            mul();
        }else if(operation=='sub'){
            sub();
        }else{
            add();
        }   
    }    
}