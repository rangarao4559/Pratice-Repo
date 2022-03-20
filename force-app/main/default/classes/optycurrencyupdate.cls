global class optycurrencyupdate implements Database.Batchable <sobject>,Database.allowsCallouts{
    global string apikey;
    global optycurrencyupdate(string apikey){
        this.apikey=apikey;
    }
    global database.QueryLocator start(database.BatchableContext bc){
        string query='select Id,Amount,INR_value__c	 from opportunity';
        return database.getQueryLocator(query);
        
    }
    global void execute(database.BatchableContext bc,list<opportunity> optylist){
        Http p=new Http();
        HttpRequest request=new HttpRequest();
        string endpoint='http://apilayer.net/api/live?';
        
endpoint=endpoint+'access_key='+apikey; 
        endpoint=endpoint+'&currencies=INR&source=USD&format=1';
        request.setEndpoint(endpoint);
        request.setMethod('GET');
        HttpResponse response=p.send(request);
        string jsonstring =response.getBody();
        system.JSONParser jp=json.createParser(jsonstring);
        decimal inrvalue;
        while(jp.nextToken()!=null){
            if(jp.getText()=='USDINR'){
                jp.nextToken();
                inrvalue=(decimal)jp.getDecimalValue();
            }
        }
        for(opportunity op:optylist){
            
            op.INR_value__c='Rs'+(op.Amount*inrvalue);
            
        }
        update optylist;
    }
    
    
    global void finish(database.BatchableContext bc){
        AsyncApexjob job=[select id,status from AsyncApexjob where Id=:bc.getJobId()];
        Messaging.SingleEmailMessage msg=new messaging.SingleEmailMessage();
        string[] toadd=new string[]{'kanakaranga339@gmail.com'};
            msg.setToAddresses(toadd);
        msg.setSubject('Currency update');
        msg.setPlainTextBody('Batch operation processed:'+job.status);
        messaging.Email[] emails=new messaging.Email[]{msg};
            messaging.sendEmail(emails);
        
    }
}