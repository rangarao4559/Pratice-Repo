trigger paymenttrigger on payments__c (before insert,after insert,before update,after update,before delete,after delete,After undelete) {
    if(trigger.isbefore && trigger.isinsert){
        
        for(payments__c p:trigger.new){
           if(p.manager__c=='pending'){
            p.manager__c='approved';
           }
       }
        }
    if(trigger.isafter && trigger.isinsert){
            list<loan__c>ln=new list<loan__c>();

        for(payments__c g:trigger.new){
            if(g.Status__c=='approved'){
                loan__c v=new loan__c();
                v.Name=g.Name;
                v.email__c='kanakaranga339@gmail.com';
                v.loan_type__c='education';
                ln.add(v);
            }
            
        }
        
         if(ln.size() > 0 )
    insert ln;     
    }
   
  
       if(trigger.isbefore && trigger.isupdate){ 

        map<id,payments__c> oldmap=trigger.oldmap;   
    map<id,payments__c>newmap=trigger.newmap;
    set<id>keys=oldmap.keySet();
      
    for(id k:keys){
           
    payments__c old=oldmap.get(k);
         payments__c newl=newmap.get(k);
                system.debug('=old=='+old.reporting_manager__c);
                system.debug('==new='+newl.reporting_manager__c);

        if(old.reporting_manager__c!='pending' && newl.reporting_manager__c=='approved'){
            newl.amount__c=120000;
       }

        
   }   
   }
  
    
    if(trigger.isafter && trigger.isupdate){
         list<loan__c>iop=new list<loan__c>();
        map<id,payments__c> oldmap=trigger.oldmap;   
    map<id,payments__c>newmap=trigger.newmap;
    set<id>keys=oldmap.keySet();
      

           
        for(id k:keys){
           
    payments__c old=oldmap.get(k);
         payments__c newl=newmap.get(k);
            if(old.mode__c!='cash' && newl.mode__c=='online'){
              loan__c p=new loan__c();
                p.Name=newl.Name;
                p.email__c='parimiranga339@gmail.com';
                p.loan_type__c='education';
               iop.add(p);
            }
            
        
    }
         insert iop; 
       }
  
     
        if(trigger.isbefore && trigger.isdelete){
   payments__c    paylist=[select createddate from payments__c where createddate=today];
          
            for(payments__c p:trigger.old){
                 
            //    date d=system.today();
                if(p.CreatedDate==paylist.createddate){
                   
                    p.adderror('u cannot delete todays record');
                }
        }
        
    }
    if(trigger.isafter&&trigger.isdelete){
      
      list<messaging.Email>emails=new list<messaging.Email>();
        for(payments__c o:trigger.old){
            messaging.SingleEmailMessage msg=new messaging.SingleEmailMessage();
            string[] toadd=new string[]{o.email__c};
                msg.setToAddresses(toadd);
            msg.setSubject('deletedrecord');
            string body='we have recieved this mail because one record was deleted,<br/>';
            body=body+'name:'+o.Name;
            msg.setHtmlBody(body);
            emails.add(msg);
            
         messaging.sendEmail(emails);
            
        }
           }
  
    if(trigger.isafter&&trigger.isundelete){
        list<payments__c>payt=new list<payments__c>();
        set<id>ids=new set<id>();
        for(payments__c p:trigger.new){
            ids.add(p.id);
        }
        list<payments__c>paym=[select id,Name from payments__c where id=:ids ];
        for(payments__c pd:paym){
            pd.name='undeleted <br/> <br/>'+pd.name;
            payt.add(pd);
            
        }
           update payt;
    } 
    
}