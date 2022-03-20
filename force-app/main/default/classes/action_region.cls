public class action_region {
    public String name              {set;get;}
    public String selected            {set;get;}
    public string phone             {set;get;}
    public List<SelectOption> cities     {set;get;}
    public List<SelectOption> places     {set;get;}
    public Map<String,List<String>> cityMap {set;get;}
    public String result          {set;get;}
    public action_region(){
        /* Initialize the memory and assign the values  */
        cities =new List<SelectOption>();
        places =new List<SelectOption>();
        List<String> hplaces =new List<String>{'SRNagar','LBNagar'};
        List<String> bplaces =new List<String>{'WhiteField','ECity'};
        cityMap =new Map<String,List<String>>();
        cityMap.put('Hyd',hplaces);
        cityMap.put('Ban',bplaces);
       /* Create the options for city picklist */
        SelectOption n=new SelectOption('none','-None-');
        cities.add(n);
        places.add(n);
        Set<String> cityList =cityMap.keySet(); //Hyd,Ban
        for(String s:cityList){
            SelectOption op=new SelectOption(s,s);
            cities.add(op);
        }
    }
    public void callMe(){
        places.clear();
        SelectOption n=new SelectOption('none','-None-');
        places.add(n);
        if(selected!='none'){
            List<String> myPlaces =cityMap.get(selected);
            for(String s:myPlaces){
                selectOption op=new SelectOption(s,s);
                places.add(op);
            }
        }
        result='Name :'+name+' ==> Phone:'+phone+'===>Selected:'+selected; 
    }
}