public class inboundexample_2 implements Messaging.InboundEmailHandler {
    public Messaging.InboundEmailResult  handleInboundEmail(Messaging.InboundEmail email,Messaging.InboundEnvelope envp){
       Messaging.InboundEmailResult result=new  Messaging.InboundEmailResult();
        string fromadd=email.fromAddress;
        contact c=[select id from contact where email=:fromadd limit 1];
        try{
            case mycase=new case();
            mycase.ContactId=c.id;
            mycase.origin='email';
            mycase.priority='normal';
            mycase.Status='new';
            mycase.Description=email.plaintextbody;
            mycase.subject=email.subject;
            insert mycase;
            Messaging.InboundEmail.BinaryAttachment[]emailfl=email.binaryAttachments;
            list<Attachment>attachments=new list<Attachment>();
            for(messaging.InboundEmail.BinaryAttachment b:emailfl){
                Attachment a=new Attachment();
                a.ParentId=mycase.id;
                a.name=b.filename;
                a.body=b.body;
                attachments.add(a);
                insert attachments;
                result.success=true;
            }
        }
        catch(exception e){
            result.success=false;
        }
        
return result;
}
}