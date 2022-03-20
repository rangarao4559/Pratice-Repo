public class integrationoauth_usernameNDPASSWORD {
public string clientId {set;get;}
public string clientSecret {set;get;}
public string userName{set;get;}
public string password{set;get;}
public string accessToken{set;get;}
public string result{set;get;}
public string endpoint{set;get;}
    public string industry{set;get;}

    public integrationoauth_usernameNDPASSWORD (){
endpoint='https://login.salesforce.com/services/oauth2/token';
    }
public void send(){
   http p=new http();
        httprequest request= new httprequest();
       
        request.setEndpoint(endpoint);
        request.setMethod('POST');
    string body='grant_type=password';
       body=body+'&client_id='+clientId;
    body=body+'&client_secret='+clientSecret;
       body=body+'&username='+userName;
      body=body+'&password='+password;
    request.setBody(body);
        httpResponse response=p.send(request);
        result=response.getBody();
    system.JSONParser jp=json.createParser(result);
    while(jp.nextToken()!=null){
        if(jp.getText()=='access_token'){
            jp.nextToken();
            accessToken=jp.getText();
        }
    }
}
       public void invoke(){
        string endpoint='https://ap15.salesforce.com/services/apexrest/rangarao?industry='+industry;
            http p=new http();
        httprequest request= new httprequest();
       
        request.setEndpoint(endpoint);
        request.setMethod('GET');
           request.setHeader('Authorization','OAuth '+accessToken);
             httpResponse response=p.send(request);
           system.debug('response'+response);
       result=response.getBody();
        /* while (response.getStatusCode() == 302) {
    request.setEndpoint(response.getHeader('Location'));
             system.debug('yu'+response.getHeader('Location'));
    response = new Http().send(request);
             result=response.getBody();
}  */
    }
}