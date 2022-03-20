public class outboundexample_2 {
    public outboundexample_2(){
        Messaging.SingleEmailMessage msg=new Messaging.SingleEmailMessage();
        list<string> toaddress=new list<string>{'kanakaranga339@gmail.com'};
            msg.setToAddresses(toaddress);
        msg.setSubject('htmlbody');
        msg.setSenderDisplayName('defhjughjdj.com');
        string body='<h2> Dear customer,<br/>';
        body=body+'<b> Name:</b><i>font style="color=:red">satish</i><br/><br/>';
        body=body+'<b>Phone:</b><style="color=:yellow">12355<br/>';
        msg.setHtmlBody(body);
        Messaging.Email[]emails=new Messaging.Email[]{msg};
            Messaging.SendEmail(emails);
    }
     
}
/*

public class Outbound_Example_2 {
    public Outbound_Example_2(){
        Messaging.SingleEmailMessage msg =new Messaging.SingleEmailMessage();
        List<String> toadd=new List<String>{'kanakaranga339@gmail.com'};
        msg.setToAddresses(toadd);
        msg.setSubject('Html Body');
        msg.setSenderDisplayName('Dev_314_Example');
        String body='<h2> Dear Customer,<br/>';
        body=body+'<b> Name:</b><i><font style="color:red">Satish</i><br/><br/>';
        body=body+'<b> Phone:</b><i><font style="color:red">040-12345</i><br/><br/>';
        msg.setHtmlBody(body);
        Messaging.Email[] emails =new Messaging.Email[]{msg};
        Messaging.sendEmail(emails);
    }
}*/