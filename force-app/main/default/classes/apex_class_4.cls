public class apex_class_4 {
  /*   public string stagename;
    public decimal  amount;
    public date closedate;
    public void callme(){
        if(stagename=='prospecting'){
            amount=50000;
            closedate=system.today();
        } 
        else{
            amount=30000;
            closedate=system.today()+15;
            
        }
    }
    public string name;
    public integer age;*/
   /* public string jsonstring{set;get;}
    public apex_class_4(){
        system.JSONGenerator js=json.createGenerator(true);
        js.writeStartObject();
        js.writeFieldName('name');
        js.writeString('wipro'); 
        js.writeStringField('City', 'Hyd');
        js.writeFieldName('age');
        js.writeNumber(30);
        js.writeNumberField('amount',1000);
        js.writeBooleanField('flag', true);
        js.writeDateField('DOB',system.today());
        blob b=blob.valueOf('satishmyla');
        js.writeBlobField('Password', b);
        js.writeEndObject();
        jsonstring=js.getAsString();
    }*/
    public string jsonstring {set;get;}
    public map<string,object> result {set;get;}
    public integer aval {set;get;}
    public account acc {set;get;}
    public apex_class_4(){
        jsonstring='{"Name":"Kiran","age":10,"Account":{"Name":"wipro","Phone":"123456"}}';
        system.JSONParser jp=JSON.createParser(jsonstring);
        result=new map<string,object>();
        while(jp.nextToken()!=null){
            string key=jp.getText();
         //   result.put(key, jp.getCurrentToken());
            if(key=='age'){
                jp.nextToken();
                aval=(Integer)jp.getIntegerValue();
            }   
            if(key=='Account'){
                 jp.nextToken();
                acc=(Account)jp.readValueAs(Account.class);
            }
     
        }
        
    }

}