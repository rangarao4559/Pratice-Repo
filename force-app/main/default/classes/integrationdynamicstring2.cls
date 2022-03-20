public class integrationdynamicstring2 {
 public string result {set;get;}
    public Account acc {set;get;}
    public integrationdynamicstring2(){
        acc=new Account();
    }
    public void Create(){
        system.JSONGenerator js=json.createGenerator(true);
        js.writeStartObject();
        js.writeFieldName('status');
        try{
            insert acc;
            js.writeString('Success');
            js.writestringField('Id',acc.Id );
            
        }
        catch(exception e){
            js.writeString('failed');
            js.writeStringField('error', e.getmessage());
        }
        js.writeEndObject();
        result =js.getAsString();
        
    }
}