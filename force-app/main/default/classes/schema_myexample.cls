public class schema_myexample {
    public list<string>fidnames {set;get;}
    public schema_myexample(){
        schema.DescribeSObjectResult result=lead.sobjectType.getDescribe();
        map<string,schema.SObjectField>fldmap=result.fields.getmap();
        set<string>keys=fldmap.keyset();
        fidnames=new list<string>(keys);
        
    }

}