public class myexample_3 {
    public list<selectoption>leftside {set;get;}
    public list<selectoption>rightside {set;get;}
    public set<string>selected {set;get;}
    public set<string>notselected {set;get;}
    public list<string>add {set;get;}
    public list<string>removed {set;get;}
    public list<string>fields {set;get;}
    public myexample_3(){
        leftside=new list<selectoption>();
        rightside=new list<selectoption>();
        selected=new set<string>();
        notselected=new set<string>();
        fields=new list<string>{'rating','phone','industry'};   
            notselected.addall(fields);
        selectoption op=new selectoption('none','none');
        leftside.add(op);
        rightside.add(op);
        getoptions();
    }
        public void getoptions(){
            leftside.clear();
            rightside.clear();
            selectoption op=new selectoption('none','none');
            if(notselected.size()>0){
                for(string s:notselected){
                    selectoption op1=new selectoption(s,s);
                    leftside.add(op1);
                    
                }
            }
                else{
                    leftside.add(op);
                }
                
                
            
            if(selected.size()>0){
                for(string s1:selected){
                    selectoption op2=new selectoption(s1,s1);
                    rightside.add(op2);
                    
                } 
                
            }
            else{
                rightside.add(op);
                
                
            }
            
        }
    public void addele(){
       notselected.removeall(add);
        selected.addall(add);
        getoptions();
        
    }
    public void removeele(){
        notselected.addall(removed);
        selected.removeall(removed);
        getoptions();
    }
        
    

}