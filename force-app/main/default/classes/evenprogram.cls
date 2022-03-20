public class evenprogram {
    public integer n;
public integer r;
    public evenprogram(){
        n=2;
    }


    public void callme(){
      r = System.Math.mod(n, 2);
        if(r==0){
            system.debug('evenno:'+n);
            
        }
        else{
            system.debug('odd:'+n);
        }
        
    }

}