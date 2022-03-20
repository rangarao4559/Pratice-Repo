public class adress extends employee {
    public string name;
    public adress(){
        name='ravi';
        
    }
    public void calculate(){
        if(exp>5){
            salary=50000;
        }
        else{
            salary=30000;
        }
    }
    public override void display(){
        system.debug('rangdjksyui');
        system.debug('Name:'+super.name);
    } 

}