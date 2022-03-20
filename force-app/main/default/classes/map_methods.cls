public class map_methods {
    public map<string,string>rname ;
    public map<string,string>rcities ;
    public list<string>lname ;
    public string a;
     public set<string>lkey ;
    public boolean conkey;
    public boolean isem;
    public integer input;
    public map_methods(){
        rname=new map<string,string>();
          rcities=new map<string,string>();
        lname=new list<string>();
        lkey=new set<string>();
        rname.put('ravi','123');
        rname.put('raghu','456');
        rname.put('ramu','789');
        rcities.put('hyd','kphb');
          rcities.put('ban','amerr');
          rcities.put('kochi','san');
         a=rname.get('ravi');
        lname=rname.values();
        lkey=rname.keySet();
        conkey=rname.containskey('ravi');
        isem=rname.isempty();
        input=rname.size();
       rname=rcities.clone();
        
    }

}