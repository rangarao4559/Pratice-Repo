public class outboundexample_3 {
    public outboundexample_3(){
   EmailTemplate et=[select id from EmailTemplate where name='Testing'];
        contact con=[select id,Accountid from contact where phone='89856'];
        Messaging.singleEmailmessage msg= new Messaging.SingleEmailMessage();
        msg.setTargetObjectId(con.id);
        msg.setWhatid(con.AccountId);
        msg.setTemplateId(et.id);
        Messaging.Email[]emails=new Messaging.Email[]{msg};
            Messaging.sendEmail(emails);
    }
        

}