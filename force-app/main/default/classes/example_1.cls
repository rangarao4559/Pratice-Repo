public class example_1 {
    public  list<account>acc {set;get;}
    public integer input{set;get;}
    public example_1(){
        acc=new list<account>();
    }
    public void create(){
        integer i;
        for(i=0;i<input;i++){
        account a=new account();
        a.name='ranga';
        acc.add(a);
        
    }
    
    insert(acc);
    }

}