public class schemamyexample90 {
 list<string>fieldnames {set;get;}
    public schemamyexample90(){
        schema.Describesobjectresult result=lead.sobjecttype.getdescribe();
        map<string,sobjectfield>fldmap=result.fields.getmap();
        set<string>keys=fldmap.keyset();
        fieldnames =new list<string>(keys);    
    }

}