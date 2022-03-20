public class picklist_example_2 {
    public list<selectoption>options {set;get;}
    public string selected {set;get;}
    public string result {set;get;}
    public  picklist_example_2 (){
        options=new list<selectoption>();
        selectoption op1=new selectoption('none','none');
         selectoption op2=new selectoption('hyd','hyd');
         selectoption op3=new selectoption('ban','ban');
         selectoption op4=new selectoption('che','che');
        options.add(op1);
        options.add(op2);
        options.add(op3);
        options.add(op4);
    }
    public void search(){
        result='u have selected:'+selected;
    }

}