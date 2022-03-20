public class overloading {
    public decimal amount,year,rate,interst;
    public void calculate(){
        amount=10000;
        rate=5;
        year=2;  
        interst=(amount*rate*year)/100;
    }
    public void calculate(decimal amount){
        rate=5;
        year=2;
        interst=(amount*rate*year)/100;
    }
    public void calculate(decimal amount,decimal rate){
        year=2;
          interst=(amount*rate*year)/100;
    }
    public void calculate(decimal amount,decimal rate,decimal year){ 
          interst=(amount*rate*year)/100;
    }
    public void show(){
    system.debug('Interst:'+interst);
    }
}