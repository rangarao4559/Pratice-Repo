public class integrationdynamicstring3 {
    public string searchtext {set;get;}
    public string result {set;get;}
    public void search(){
        list<account> accounts=[select id,name,phone from account where Industry=:searchtext];
        system.JSONGenerator js=system.json.createGenerator(true);
        js.writeStartObject();
        Integer count=accounts.size();
        js.writeStringField('status', 'SUCCESS');
        js.writeNumberField('count', count);
        if(count>0){
            js.writeFieldName('Accounts');
            js.writeStartArray();
            for(Account a:accounts){
                js.writeStartObject();
                js.writeStringField('Name', a.name);
                js.writeStringField('Phone', a.phone);
                js.writeEndObject();
                
            }
            js.writeEndArray();
        }
        js.writeEndObject();
        result=js.getAsString();
    }
}