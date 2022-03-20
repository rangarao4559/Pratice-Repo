public class schemaexample_4 {
    public list<string>objectnames {set;get;}
    public schemaexample_4(){
        map<string,schema.sobjecttype>objmap=schema.getglobalDescribe();
        set<string>keys=objmap.keyset();
        objectnames=new list<string>(keys);
    }

}