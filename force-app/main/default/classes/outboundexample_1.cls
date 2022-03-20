public class outboundexample_1 {
    public outboundexample_1(){
        Messaging.SingleEmailMessage msd=new messaging.SingleEmailMessage();
        list<string> toaddress=new list<string>{'kanakaranga339@gmail.com'};
            list<string> ccaddress=new list<string>{'saikirankaja@gmail.com'};
                msd.setToAddresses(toaddress);
        msd.setCcAddresses(ccaddress);
        msd.setSubject('testemail');
        msd.setSenderDisplayname('devlopment@314.com');
        msd.SetplainTextBody('dear customer,this is a text message');
        Messaging.Email[] emails=new messaging.Email[]{msd};
            Messaging.sendEmail(emails);        
    }

}