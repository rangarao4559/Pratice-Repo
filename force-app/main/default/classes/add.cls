public class add {
    public decimal aval,bval,cval;
    public void calculate(){
        aval=10;
        bval=10;
        cval=aval+bval;
    }
    public void calculate(decimal aval){
        bval=15;
        cval=aval+bval;
    }
    public void calculate( decimal aval,decimal bval){
        cval=aval+bval;
    }
    public void show(){
        system.debug('Cval:'+cval);
    }

}