public class Integration_callout {
 public static void send_Callout_Integration(){
       // respWrapperClass wrap = New respWrapperClass();
       /*Http ht = New Http();
        HttpRequest req = New HttpRequest();
        HttpResponse resp = New HttpResponse();
        req.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        req.setMethod('POST');
        req.setHeader('Content-Type', 'application/json;charset=UTF-8');
        req.setBody('{"name":"mighty moose"}');
        resp = ht.send(req);*/
    /*    HttpResponse resp = New HttpResponse();
      if(!test.isRunningTest()){
        resp = Common_Integartion_Cntrl.sendCallout_Cntrl('https://th-apex-http-callout.herokuapp.com/animals', 'POST', '{"name":"mighty"}');
        wrap = (respWrapperClass)JSON.deserialize(resp.getBody(), respWrapperClass.class);
        }else {
            string str = '{"animals":["majestic badger","fluffy bunny","scary bear","chicken","mighty moose","Puppy","horse"]}';
             wrap = (respWrapperClass)JSON.deserialize(str, respWrapperClass.class);
        }
        system.debug('===animals==='+wrap.animals[5]);
       
    }*/
     respWrapperClass wrap = New respWrapperClass();
       HttpResponse resp = New HttpResponse();
      if(!test.isRunningTest()){
        resp = Common_Integartion_Cntrl.sendCallout_Cntrl('https://jsonplaceholder.typicode.com/todos/45', 'POST', '{"tyuiop"}');
        wrap = (respWrapperClass)JSON.deserialize(resp.getBody(), respWrapperClass.class);
        }else {
            string str = '{"animals":["majestic badger","fluffy bunny","scary bear","chicken","mighty moose","Puppy","horse"]}';
             wrap = (respWrapperClass)JSON.deserialize(str, respWrapperClass.class);
        }
       
       system.debug('ranju:'+wrap);
 }
    public class respWrapperClass {
        public string[] animals{get;set;}
    }
}