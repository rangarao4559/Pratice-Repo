public class example_5{

    public list<contact> conlist {set;get;}
    public integer input {set;get;}
    public example_5 (){
      
        conlist =new list<contact>();
    }
    public void create(){
        integer i;

        for(i=0;i<input;i++){
          
            contact c=new contact();
            conlist.add(c);
        }
       
    }
    public pagereference add(){
        if(conlist.size()>0)  {
            insert conlist;
        conlist.clear();
        }  
        
        return null;
        
    }
    
}