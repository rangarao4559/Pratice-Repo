public class Json_Example_2 {
    public string result {set;get;}
    public Account acc {set;get;}
    public Json_Example_2(){
        acc=new Account();
    }
    public void create(){
        system.JSONGenerator js=json.createGenerator(true);
        js.writeStartObject();
        js.writeFieldName('status');
        try{
            insert acc;
            js.writeString('Success');
            js.writeIdField('Id', acc.id);
            
        }
        catch(Exception e){
            js.writeString('failed');
            js.writeStringField('Error',e.getMessage());
        }
        js.writeEndObject();
        result=js.getAsString();
    }
}