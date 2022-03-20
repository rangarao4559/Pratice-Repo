public class overloadingexample {
    public decimal amount,year,rate,interst;
    public overloadingexample(){
        amount=10000;
        year=2;
        rate=5;
    }
    public void calculate(){
                interst=amount*rate*year/100;
    }
    public void calculate(decimal amount){
        interst=amount*rate*year/100;  
    }
    public void calculate(decimal amount,decimal rate){
        interst=amount*rate*year/100;
    }
    public void calculate(decimal amount,decimal rate,decimal year){
        interst=amount*rate*year/100;
    }
    public void show(){
        system.debug('Interst:'+interst);
    }

}