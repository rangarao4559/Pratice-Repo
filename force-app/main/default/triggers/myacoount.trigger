trigger myacoount on Account (before insert,after insert,before update,after update,before delete,after delete) {
    if(trigger.isafter&&trigger.isinsert){
   list<contact>contactlist=new list<contact>();
    for(account a:trigger.new){
  contact c=new contact();
        c.AccountId=a.id;
        c.LastName=a.Name;
        contactlist.add(c);
    }
    insert contactlist;
   
    }
    if(trigger.isbefore&&trigger.isinsert){
       for(account a:trigger.new){
            a.Name='madhu';
           a.Rating='cold';
        }
    }
         map<id,account>oldmap=trigger.oldmap;
    map<id,account>newmap=trigger.newmap;
    set<id>keys=oldmap.keySet();
    if(trigger.isbefore&&trigger.isupdate){
            
        for(id k:keys){
        account old=oldmap.get(k);
            account newl=newmap.get(k);
            if(old.AnnualRevenue!=10000 && newl.AnnualRevenue==20000){
                newl.Ownership='public';
            }
            }
        
    }
    if(trigger.isafter&&trigger.isupdate){
        list<contact>conlist=new list<contact>();
        for(id k:keys){
            account old=oldmap.get(k);
            account newl=newmap.get(k);
            if(old.AccountNumber!='1234' && newl.AccountNumber=='4567'){
                contact h=new contact();
                h.FirstName='g';
                h.LastName='zampa';
                h.AccountID=newl.Id;
                conlist.add(h);
            }
            
        }
        
        insert conlist;
    }
  //  if(trigger.isbefore && trigger.isdelete){
       // for(account a:trigger.old){
        //   a.adderror('u can not delete this record');
      //  }
        
 //   }
    if(trigger.isafter && trigger.isdelete){
        list<messaging.Email>emails= new list<messaging.Email>();
        
        for(account a:trigger.old){
            messaging.singleEmailMessage msg=new messaging.singleEmailMessage();
            string[] toadd=new string[]{'kanakaranga339@gmail.com'};
                msg.setToAddresses(toadd);
            msg.setSubject('ranga');
      string body='we have recieved this mail';
            msg.setHtmlBody(body);
    emails.add(msg);
            
        }
                messaging.sendEmail(emails);
    }
    
}