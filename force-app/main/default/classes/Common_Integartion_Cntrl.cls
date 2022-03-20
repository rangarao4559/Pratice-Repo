public class Common_Integartion_Cntrl {
/* public static HttpResponse sendCallout_Cntrl(String endPointURL, String method, String body){
        Http ht = New Http();
        HttpRequest req = New HttpRequest();
        HttpResponse resp = New HttpResponse();
       req.setEndpoint(endPointURL);
        req.setMethod(method);
        req.setBody(body);
        req.setHeader('Content-Type', 'application/json;charset=UTF-8');
        if(!test.isRunningTest())
        resp = ht.send(req);
       
        return resp;
    }*/
   /* public static HttpResponse sendCallout_Cntrl(string endpointURL,string method,string body){
        Http ht=new Http();
        HttpRequest req=new HttpRequest();
        HttpResponse resp=new HttpResponse();
        req.setEndpoint(endpointURL);
        req.setMethod(method);
        req.setBody(body);
        req.setHeader('Content-Type', 'application/json;charset=UTF-8');
        if(!test.isRunningTest())
        resp = ht.send(req);
       
       
         return resp;
        
    }*/
     public static void sendtodos(){
       Http ht=new Http();
       HttpRequest req=new httpRequest();
       req.setEndpoint('https://jsonplaceholder.typicode.com/todos/99');
       req.setMethod('POST');
       req.setHeader('Content-Type', 'application/json;charset=UTF-8');
       HttpResponse res=ht.send(req);
       
       system.debug('===res==='+res);
       if (res.getStatusCode() != 201) {
      System.debug('The status code returned was not expected: ' +
       res.getStatusCode() + ' ' + res.getStatus());
           system.debug('resp body====='+res.getBody());
} else {
   System.debug(res.getBody());
   }
}
}