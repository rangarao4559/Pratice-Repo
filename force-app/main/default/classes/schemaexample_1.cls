public class schemaexample_1 {
    public map<string,object>resmap {set;get;} 
    public schemaexample_1(){
        resmap=new map<string,object>();
        schema.DescribeSObjectResult result=Account.sobjectType.getDescribe();
        resmap.put('label', result.getlabel());
         resmap.put('plurallabel', result.getlabelplural());
         resmap.put('key', result.getKeyPrefix());
         resmap.put('Name', result.getname());
         resmap.put('custom', result.iscustom());
         resmap.put('read', result.isAccessible());
         resmap.put('Delete', result.isdeletable());
         resmap.put('create', result.iscreateable());
         resmap.put('custom', result.iscustomsetting());
         resmap.put('edit', result.isUpdateable());
         resmap.put('undelete', result.isUndeletable());
        resmap.put('query', result.isQueryable());
        resmap.put('search', result.issearchable());
        resmap.put('MRU', result.isMRUenabled());
        resmap.put('feed', result.isfeedEnabled());
        
    }

}