public class field_dependency_2 {
    public list<selectoption> states {set;get;}
    public list<selectoption> cities  {set;get;}
    public map<string,list<string>>statemap {set;get;}
    public string selected {set;get;}
    public field_dependency_2(){
       statemap=new map<string,list<string>>();
        list<string> apcities=new list<string>{'amaravathi','palakollu','eluru','bhimavaram'};
            list<string> tscities=new list<string>{'hyd','warngal','kazipet','lbnagar'};
            statemap.put('andhra',apcities);
        statemap.put('telangana',tscities);
        cities=new list<selectoption>();
        states=new list<selectoption>();
        selectoption op=new selectoption('-none-','-none-');
          states.add(op);        
        cities.add(op);
              set<string> keys=statemap.keyset();
        for(string s:keys){
            selectoption o=new selectoption(s,s);
            states.add(o);
        }
        
    }
    public void getdata(){
        cities.clear();
        selectoption n=new selectoption('none','none');
        cities.add(n);
        if(selected!='none'){
            list<string> mylist=statemap.get(selected);
            for(string r:mylist){
                selectoption oj=new selectoption(r,r);
                cities.add(oj);
            }
        }
    }
}