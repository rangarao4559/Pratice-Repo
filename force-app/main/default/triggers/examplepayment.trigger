trigger examplepayment on payments__c (before update) {
 map<id,payments__c> oldmap=new map<id,payments__c>();    
    map<id,payments__c>newmap=new map<id,payments__c>();
    set<id>keys=oldmap.keySet();
   
        for(id k:keys){
            payments__c old=oldmap.get(k);
            payments__c newl=newmap.get(k);
            if(old.Status__c !='pending' && newl.Status__c=='approved'){
                
          newl.amount__c=50000;
            }
            
             

}
}