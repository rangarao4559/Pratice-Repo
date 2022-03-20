public class example_2 {
 public  list<account>acc {set;get;}
    public integer selected {set;get;}
    public example_2(){
        acc=new list<account>();
    }
    public void create(){
        integer i;
        acc.clear();
              
        for(i=0;i<selected;i++){
            
            account a=new account();
            a.name='rama'+i;
            acc.add(a);
            
        }
        insert acc;
        
    }
}