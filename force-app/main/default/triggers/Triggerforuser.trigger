trigger Triggerforuser on User (after update) {
  list<case>usecase=[select id,owner.name from case where owner.name='kanaka p'];
    for(user u:trigger.new){
        if(u.User_Availability__c=='Yes'){
            for(case ce:usecase){
                ce.ownerid =u.Id;
            }
                
            
        }
        
    }
    update usecase;
}