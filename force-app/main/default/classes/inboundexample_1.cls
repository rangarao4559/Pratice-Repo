public class inboundexample_1 implements Messaging.InboundEmailHandler{
  public  Messaging.InboundEmailResult handleInboundEmail(Messaging.InboundEmail email,Messaging.InboundEnvelope envp){
        Messaging.InboundEmailResult result=new Messaging.InboundEmailResult();
        string fromadd=email.fromAddress;
        contact c=[select id from contact where email=:fromadd limit 1];
      try{
          case mycase=new case();
          mycase.contactid=c.id;
          mycase.subject=email.subject;
          mycase.priority='normal';
          mycase.origin='email';
          mycase.status='new';
          mycase.Description=email.plainTextBody;
          insert mycase;
          result.success=true;
      }
      catch(Exception e){
          system.debug('Error');
          result.success=false;
      }
      return result;
    }

}