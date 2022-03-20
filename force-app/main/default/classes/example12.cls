public class example12 {
    public example12(){
List<String> l=new List<String>{'h2o','hcl','hcl','n2'}; 
    system.debug('newlist'+l);
    Set<String> s=new Set<String>{'h2o','hcl','co2','co'};
            system.debug('newset'+s);
        s.addAll(l);
         system.debug('newupdated'+s);
        }
}