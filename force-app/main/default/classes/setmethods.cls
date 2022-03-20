public class setmethods {
    public set<string>ages {set;get;}
     public set<string>names {set;get;}
    public list<string>cities {set;get;}
    public boolean rtyu {set;get;}
    public boolean result {set;get;}
     public boolean qwer {set;get;}
    public integer count {set;get;}
    public list<string>soel {set;get;}
    public boolean zxcv {set;get;}
    public boolean dele {set;get;}

    public setmethods(){
        names=new set<string>();
        ages=new set<string>();
        soel=new list<string>();
     
        ages.add('25');
          ages.add('35');
          ages.add('45');
          ages.add('55');
    
        names.add('ravi');
        names.add('raghu');
        names.add('ram');
        names.add('mohan');
    
            rtyu=ages.equals(names);
     qwer=names.isEmpty();
  
        cities=new list<string>();
        cities.add('hyd');
        cities.add('ban');
        cities.add('ram');
        cities.add('mohan');
        cities.add('har');
        cities.sort();
        soel.addall(cities);
     ages=names.clone();
     names.retainall(ages);
 result= names.containsall(ages);
       count=cities.size();
        zxcv=names.contains('ram');
        dele=ages.remove('25');
        
        
    }

}