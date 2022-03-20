public class interst {
    public integer amount{set;get;}
    public integer rate {set;get;}
        public integer year {set;get;}
    public decimal interst {set;get;}
    public void calculate(){
       interst=(amount*rate*year)/100;
    }
    public void cancel(){
        amount=null;
        rate=null;
        year=null;

    
    }


}