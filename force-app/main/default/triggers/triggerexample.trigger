trigger triggerexample on Opportunity (before update) {
    map<id,opportunity>oldmap=trigger.oldmap;
    map<id,opportunity>newmap=trigger.newmap;
    set<id>keys=oldmap.keySet();
    for(id k:keys){
        opportunity old=oldmap.get(k);
        opportunity newopt=newmap.get(k);
        if(old.stageName!='closed won' && newopt.stageName=='closed won'){
            newopt.CloseDate=system.today();
        }
        
    }

}