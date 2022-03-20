trigger leadtrigger on Lead (after insert) {
    list<messaging.Email>emails=new list<messaging.Email>();
    for(lead l:trigger.new){
        messaging.SingleEmailMessage msg=new messaging.SingleEmailMessage();
        string [] toadd=new string [] {l.email};
        msg.settoaddresses(toadd);
        msg.setsubject('testlead');
        string body='dear customer<br/>';
        body=body+'we have following details';
        body=body+'<br/>lastname:'+l.lastname;
        body=body+'<br/>firstname:'+l.firstname;
        msg.setHtmlBody(body);
        emails.add(msg);
    }
    messaging.sendEmail(emails);

}