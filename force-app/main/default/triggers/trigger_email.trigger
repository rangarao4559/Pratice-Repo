trigger trigger_email on Lead (after insert) {
    list<messaging.Email>emails=new list<messaging.Email>();
    for(lead l:Trigger.new){
        Messaging.SingleEmailMessage msg=new messaging.SingleEmailMessage();
        string[]toadd=new string[]{l.email};
            msg.settoaddresses(toadd);
        msg.setsubject('testemal');
   string body='dear customer<br/>';
        body=body+'we have received your enquiry with following details';
        body=body+'<br/> lastname:'+l.lastname;
        body=body+'<br/> firstname:'+l.firstname;
        body=body+'<br/> phone:'+l.phone;
        msg.setHtmlBody(body);
        emails.add(msg);
 
        
    }
    messaging.sendEmail(emails);
}