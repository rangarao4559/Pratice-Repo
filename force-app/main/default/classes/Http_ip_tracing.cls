/*protocal:http
 Endpoint:http://xml.uitrace.de/?query=ipaddress
 method=GET
Authentication:no authentication */
public class Http_ip_tracing {
    public string ipaddress {set;get;}
    public string result {set;get;}
    public list<string> headers {set;get;}
    public map<string,object> resmap {set;get;}
    public map<string,object> xmlmap {set;get;}
    public void trace(){
        http p=new http();
        //create end point
        string endpoint='http://xml.utrace.de/?query='+ipaddress;
        httprequest request=new httprequest();
        //set the endpoint to which you want to make the request
       request.setEndpoint(endpoint);
        //set the method
        request.setMethod('GET');
        // set the request and get the response
        httpresponse response=p.send(request);
        //get all the keys in the response header
       headers=response.getHeaderKeys();
        resmap=new map<string,object>();
        for(string s:headers){
            object res=response.getHeader(s);
            resmap.put(s,res);
        }
        result=response.getBody();
       
        xmlmap=new map<string,object>();
        dom.Document doc=new dom.Document();
        doc.load(result);
        dom.XmlNode root=doc.getrootelement();
        list<dom.XmlNode> childs=root.getchildelements();
        list<dom.XmlNode> subchilds=childs[0].getchildelements();
        // take one by one child element from the result and get their name and value
        for(dom.XmlNode sc:subchilds){
            xmlmap.put(sc.getname(),sc.gettext());
        }         
    }
}