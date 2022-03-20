public class multi_select_example {
    public list<selectoption>leftside {set;get;}
    public list<selectoption>rightside {set;get;}
    public set<string>selected {set;get;}
    public set<string>notselected {set;get;}
    public list<string>add {set;get;}
    public list<string>removed {set;get;}
    public list<string>fields {set;get;}
    public  multi_select_example(){
        leftside=new list<selectoption>();
         rightside=new list<selectoption>();
         selected=new set<string>();
        notselected=new set<string> ();
        fields=new list<string>{'name','phone','rating','industry','type'};
            notselected.addAll(fields);
        add=new list<string>();
        removed=new list<string>();
        SelectOption op=new SelectOption('none','-None-');
        leftside.add(op);
        rightside.add(op);
        getOptions();
       
    }
     public void getOptions(){
        leftside.clear();
        rightSide.clear();
        SelectOption op=new SelectOption('none','-None-');
        if(notSelected.size()>0){
            for(String s1:notSelected){
                SelectOption op1= new SelectOption(s1,s1);
                leftSide.add(op1);
            }
        }else{
            leftside.add(op);
        }
        if(selected.size()>0){
            for(String s2:selected){
                SelectOption op2= new SelectOption(s2,s2);
                rightSide.add(op2);
            }
        }else{
            rightside.add(op);
        }
    }
    
    public void addele(){
        notselected.removeAll(add);
        selected.addAll(add);
        getoptions();
        
    }
    public void removeele(){
        selected.removeall(removed);
        notselected.addAll(removed);
        getoptions();
    }
    

}
/*public class Multi_Select_Example {
    public List<SelectOption> leftSide 	{set;get;}
    public List<SelectOption> rightSide	{set;get;}
    public Set<String> selected			{Set;get;}
    public Set<String> notSelected		{set;get;}
    public List<String> add				{set;get;}
    public List<String> removed			{set;get;}
    public List<String> fields			{set;get;}
    public Multi_Select_Example(){
        leftSide=new List<SelectOption>();
        rightSide=new List<SelectOption>();
        selected=new Set<String>();
        notSelected=new Set<String>();
        fields =new List<String>{'Name','Phone','Industry','Rating','Ownership','Type'};
        notSelected.addAll(fields);
        add=new List<String>();
        removed=new List<String>();
        SelectOption op=new SelectOption('none','-None-');
        leftside.add(op);
        rightside.add(op);
        getOptions();
    }
    public void getOptions(){
        leftside.clear();
        rightSide.clear();
        SelectOption op=new SelectOption('none','-None-');
        if(notSelected.size()>0){
            for(String s1:notSelected){
                SelectOption op1= new SelectOption(s1,s1);
                leftSide.add(op1);
            }
        }else{
            leftside.add(op);
        }
        if(selected.size()>0){
            for(String s2:selected){
                SelectOption op2= new SelectOption(s2,s2);
                rightSide.add(op2);
            }
        }else{
            rightside.add(op);
        }
    }
    public void addEle(){
        notselected.removeAll(add);
        selected.addAll(add);
        getOptions();
    }
    public void removeEle(){
        selected.removeAll(removed);
        notSelected.addAll(removed);
        getOptions();
    }
}*/