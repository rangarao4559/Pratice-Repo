public class json_example_5 {
    public string jsonstring{set;get;}
    public map<string,object> result {set;get;}
    public integer aval {set;get;}
    public Account acc {set;get;}
    public json_example_5(){
        jsonstring ='{"Name":"Kiran","age":10,"Account":{"Name":"Wipro","Phone":"123544"}}';
        system.JSONParser jp=json.createParser(jsonstring);
        while(jp.nextToken()!=null){
            string key=jp.getText();
            if(key=='age'){
                jp.nextToken();
                aval=(integer)jp.getIntegerValue();
            }
            if(key=='Account'){
                  jp.nextToken(); 
                acc=(Account)jp.readValueAs(Account.class);
            }
        }
    }

}