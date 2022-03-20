trigger accounttest on Account (before insert,before update) {
    if(trigger.isinsert){
  list<account> acclist=[select id,name from account];
    for(account acc:trigger.new){
        for(account ac:acclist){
            if(ac.name==acc.name){
                acc.adderror('duplicate name exist');
            }
        }
        
    }
    }
    if(trigger.isupdate){
          list<account> acclist=[select id,name from account];
         for(account acc:trigger.new){
        for(account ac:acclist){
            if(acc.id!=ac.id && acc.name==ac.name){
                acc.adderror('duplicate name');
                           }
            
        }
         }
        
    }

}