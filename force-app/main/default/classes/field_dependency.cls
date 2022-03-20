public class field_dependency {
    public List<SelectOption> cities    {set;get;}
    public List<SelectOption> places     {set;get;}
    public Map<string,List<String>> cityMap {set;get;}
    public String selected          {set;get;}
    public field_dependency(){
        cityMap =new Map<String,List<String>>();
        List<String> hplaces =new List<String>{'SRNagar','LBNagar'};
        List<String> bplaces =new List<String>{'Marthali','WhiteField'};
        cityMap.put('Hyd',hplaces);
        cityMap.put('Ban',bplaces);
        cities =new List<SelectOption>();
        places =new List<SelectOption>();
        SelectOption n=new SelectOption('none','-None-');
        cities.add(n);
        places.add(n);
        Set<String> cityNames =cityMap.keySet();
        for(String s:cityNames){
            SelectOption op=new SelectOption(s,s);
            cities.add(op);
        }
        
    }
    public void getData(){
        places.clear();
        SelectOption n=new SelectOption('none','-None-');
        places.add(n);
        if(selected!='none'){
            List<String> myList=cityMap.get(selected);
            for(String s:myList){
                SelectOption op=new SelectOption(s,s);
                places.add(op);
            }
        }
    }
}