/* endpoint:http://potalpincode.in/ap:/postoffice/ameerpet
* https://api.postalpincode.in/pincode/
* method:get
* response:json
*/

public class httppincode {
    public string cityname{set;get;}
    public map<string,object> resmap{set;get;}
    public string result{set;get;}
   // public fromjson resset {set;get;}
   // public cls_postoffice  ress{set;get;}
    public string pincode{set;get;}
    public string names{set;get;}
    
    public void invoke(){
        string endpoint='https://api.postalpincode.in/pincode/'+cityname;
        http p=new http();
        httprequest request=new httprequest();
        request.setEndpoint(endpoint);
        request.setMethod('GET');
        httpresponse response=p.send(request);
        result=response.getBody();
        list<string> keys=response.getHeaderKeys();
        resmap=new map<string,object>();
        for(string s:keys){
            object o=response.getHeader(s);
            resmap.put(s,o);
        }
       
       // resset=(fromjson)json.deserialize(result, fromjson.class);
        system.JSONParser jp=json.createParser(result);
        while(jp.nextToken()!=null){
          
               
               
                jp.nextToken();
                 // resset=(fromjson)jp.readValueAs(fromjson.class);
              //  pincode=jp.gettext();
              if(jp.gettext()=='Agarru')
              {                            
              
                    if(jp.gettext()=='Circle'){
                         jp.nextToken();
                pincode=jp.gettext();
                    
              }
            }
        }
    }
    
   /* public class fromjson{
        public string message;
        public string status;
        public cls_postoffice postoffice;            
    }
    public class cls_postoffice{
        string name;
        string Description;
        string pincode;
        string branchcode;
        string branchtype;
        string deliverystatus;
        string Taulk;
        
        
    }*/
      
  
}