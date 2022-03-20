public class picklist_example_4 {
     public List<SelectOption> options {set;get;}
 public List<String> selected	  {set;get;}
    public  picklist_example_4(){
        options=new list<selectoption>();
        selected=new list<string>();
        list<string>fields=new list<string>{'name','phone','industry','rating','ownership','type'};
            for(string s: fields){
                selectoption op=new selectoption(s,s);
                options.add(op);
            }
    }
}