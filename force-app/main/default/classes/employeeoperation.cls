public class employeeoperation {
    public string empname,city,company;
    public decimal salary,exp,bonus;
    public  employeeoperation (string empname,decimal exp){
        city='hyd';
        company='tcs';
        this.empname=empname;
        this.exp=exp;
    }
    public void calculate(){
        if(exp>5){
            salary=50000;
            bonus=5000;
        }
        else{
            salary=30000;
            bonus=3000;
        }
    }
    public void show(){
        system.debug('CITY:'+city);
        system.debug('COMPANY:'+company);
        system.debug('EMPNAME:'+empname);
        system.debug('EXP:'+exp);
        system.debug('SALARY:'+salary);
        system.debug('BONUS:'+bonus);
        
    }

}