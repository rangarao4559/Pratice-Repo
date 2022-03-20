public class schemaexample_2 {
    public list<string>fieldnames {set;get;}
    public schemaexample_2(){
        schema.DescribeSObjectResult result=Account.sobjectType.getDescribe();
        map<string,schema.SObjectField>fldmap=result.fields.getmap();
        set<string>keys=fldmap.keyset();
        fieldnames=new list<string>(keys);
        
    }

}