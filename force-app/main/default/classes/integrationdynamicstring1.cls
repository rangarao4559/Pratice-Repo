public class integrationdynamicstring1 {
    public string jsonstring {set;get;}
    public integrationdynamicstring1(){
        system.JSONGenerator js=json.createGenerator(true);
        js.writeStartObject();
        js.writeFieldName('name');
        js.writeString('wipro');
        js.writeStringField('city','hyd');
        js.writeFieldName('age');
        js.writeNumber(30);
        js.writeNumberField('amount',1000);
        js.writeBooleanfield('flag',true);
        js.writeDateField('DOB',system.today());
        blob b=blob.valueOf('satishmyla');
        js.writeBlobField('password',b);
        js.writeEndObject();
        jsonstring =js.getAsString();
        
    }

}