public class schemafinalexample {
    public list<selectoption>objects {set;get;}
    public map<string,schema.SObjectType>objmap {set;get;}
    public list<selectoption>leftside {set;get;}
    public list<selectoption>rightside {set;get;}
    public set<string>notselected {set;get;}
     public set<string>selected {set;get;}
    public string objselected {set;get;}
   public list<string>fieldnames {set;get;}
    public list<string>add {set;get;}
    public list<string>removed {set;get;}
    public schemafinalexample(){
        objects=new list<SelectOption>();
         leftside=new list<SelectOption>();
         rightside=new list<SelectOption>();
        selectoption n=new selectoption('none','none');
        leftside.add(n);
        rightside.add(n);
        objmap=Schema.getglobalDescribe();
        set<string>keys=objmap.keyset();
        for(string s:keys){
            schema.SObjectType obj=objmap.get(s);
            schema.DescribeSObjectResult objresult=obj.getDescribe();
            if(objresult.IsCustom()){
                selectoption op=new selectoption(s,s);
                objects.add(op);
                /*
                String sobject_type = 'Account';
Map<String, Schema.SObjectType> global_describe = Schema.getGlobalDescribe();
Map<String, Schema.SObjectField> object_fields_map = global_describe.get(sobject_type).getDescribe().fields.getMap();
            Map<String, Schema.SObjectField> fldMap = objselected.fields.getMap();
          
             set<string>key=fldmap.keyset();
        fieldnames=new list<string>(key);
                
        notselected.addall(fieldnames);
            getoptions();
                
                    
}                   
                }
                  
                    
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
    }*/
    

}
        }
    }
}