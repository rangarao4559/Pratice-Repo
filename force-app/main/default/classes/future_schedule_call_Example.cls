public class future_schedule_call_Example {
@future(callout=true)
    public static void show(string apikey){
          http p=new http();
        httprequest request= new httprequest();
        string endpoint='http://apilayer.net/api/live?';
        endpoint =endpoint+'access_key='+apikey;
        endpoint=endpoint+'&currencies=INR&source=USD&format=1';
        request.setEndpoint(endpoint);
        request.setMethod('GET');
        httpResponse response=p.send(request);
        string jsonstring=response.getBody();
        system.JSONParser jp=json.createParser(jsonstring);
        decimal inrvalue;
        while(jp.nextToken()!=null){
            if(jp.getText()=='USDINR'){
                jp.nextToken();
                inrvalue=(decimal)jp.getDecimalValue();
             }
        }
        system.debug('inrval:'+inrvalue);
        Currency_Tracker__c c1=new Currency_Tracker__c();
        c1.End_Value__c=55;
        insert c1;
        Currency_Tracker__c c=[select Id,Start_Value__c from Currency_Tracker__c];
        c.Start_Value__c='Rs.'+inrvalue;
        update c;
    }
}