trigger contactaccount on Contact (after insert,after update) {
   list<contact> con = trigger.new;
    list<Id> accIdList = new list<id>();
  
    For (contact c:con){
     
      accIdList.add(c.accountId);
     }
  
  list<account> acc = [SELECT id, Name,Industry from Account WHERE Id =:accIdList];
    for(Account a: acc){
       a.Name='ranga';
        a.Industry ='banking';
    }
    update acc;
}