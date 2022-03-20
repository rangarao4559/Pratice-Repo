public class contactdetails {
    public string lastName,firstName,rating;
    public decimal amount;
    public contactdetails(string lastName,string firstName,string rating){
        this.lastName=lastname;
        this.firstName=firstName;
        this.rating=rating;
    }
    public void invoke (){
        if(rating=='hot'){
            amount=90000;
        }
        else{
            amount=50000;
        }  
    }
    public void display(){
        system.debug('LastName:'+lastname);
        system.debug('FirstName:'+firstname);
        system.debug('Rating:'+rating);
        system.debug('Amount:'+amount);
    }

}