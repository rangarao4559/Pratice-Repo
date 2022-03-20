public class Productinfo {
    public string name;
    public decimal price;
    public integer quantity;
    public decimal discount;
    public decimal total,tax,finalamount;
    public productinfo(){
        discount=2000;
    }
    public void calculate(){
        total=price*quantity;
        tax=total*0.10;
        finalamount=total+tax-discount;
    } 
    public void display(){
        system.debug('Name='+name);
        system.debug('Price='+price);
        system.debug('Quantity='+quantity);
        system.debug('Total='+total);
        system.debug('Tax='+tax);
        system.debug('Discount='+discount);
        system.debug('FinalAmount='+finalamount);
    }

}