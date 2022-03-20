public class json_example_4 {
    public string jsonstring{set;get;}
    public map<string,object> result{set;get;}
    public integer aval{set;get;}
    public Account  acc{set;get;}
    public json_example_4(){
        jsonstring='{"name":"kiran","age":10,"Account":{"name":"wipro","phone":"145525"}}';
        system.JSONParser jp=json.createParser(jsonstring);
        result=new map<string,object>();
        while(jp.nextToken()!=null){
            string key=jp.getText();
            result.put(key, jp.getCurrentToken());
        }
    }
    
}