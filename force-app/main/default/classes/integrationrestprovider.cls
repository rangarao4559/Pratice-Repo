@RestResource(urlmapping='/mycontact/*')
global class integrationrestprovider {
    @HttpPost
    global static string invoke(string lastname,string firstname,string phone){
        system.JSONGenerator js=json.createGenerator(true);
        js.writeStartObject();
        try{
            Contact con=new contact();
            con.Lastname=lastname;
            con.FirstName=firstname;
            con.Phone=phone;
            insert con;
            js.writeStringField('status', 'success');
            js.writeIdField('Id',con.Id);
        }catch(Exception e){
            js.writeStringField('Status', 'Failed');
            js.writeStringField('Error', e.getTypeName());
            
        }
        js.writeEndObject();
        string result=js.getAsString();
        return result;
    }
    @HttpGet
    global static string create(){
        Restrequest request=RestContext.request;
        map<string,string> inputs=request.params;
        string lastname=inputs.get('lasName');
        string firstname=inputs.get('firstName');
        string phone=inputs.get('phone');
        
     system.JSONGenerator js=json.createGenerator(true);
        js.writeStartObject();
        try{
            Contact con=new contact();
            con.Lastname=lastname;
            con.FirstName=firstname;
            con.Phone=phone;
            insert con;
            js.writeStringField('status', 'success');
            js.writeIdField('Id',con.Id);
        }catch(Exception e){
            js.writeStringField('Status', 'Failed');
            js.writeStringField('Error', e.getTypeName());
            
        }
        js.writeEndObject();
        string result=js.getAsString();
        return result;
        
    }
      @HttpDelete
    global static string myinfo(){
        Restrequest request=RestContext.request;
        map<string,string> inputs=request.params;
        string lastname=inputs.get('lasName');
        string firstname=inputs.get('firstName');
        string phone=inputs.get('phone');
        
     system.JSONGenerator js=json.createGenerator(true);
        js.writeStartObject();
        try{
         contact con=[select id,lastName,firstName,Phone from contact where lastName=:lastname and firstName=:firstname and Phone=:phone];
            delete con;
            js.writeStringField('status', 'success');
            js.writeIdField('Id',con.Id);
        }catch(Exception e){
            js.writeStringField('Status', 'Failed');
            js.writeStringField('Error', e.getTypeName());
            
        }
        js.writeEndObject();
        string result=js.getAsString();
        return result;
        
    }
}