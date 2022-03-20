public class personexample {
    public persondata person{set;get;}
    public string industry {set;get;}
    public personexample(){
        person =new persondata();
        person.name='ranga';
        person.age=10;
        person.acc=new account();
        person.acc.name='ravi';
        
        person.acc.type='prospect';
         person.acc.phone='404123';
        industry='energy';
           }
}