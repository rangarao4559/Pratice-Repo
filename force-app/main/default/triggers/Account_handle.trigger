trigger Account_handle on Account (before insert,before update,after update) {
    if(trigger.isinsert && trigger.isbefore){
        account_handle.beforeinsert(trigger.new);
    }
     if(trigger.isbefore && trigger.isupdate){
        account_handle  obj=new Account_handle();
         obj.beforeupdate(trigger.new);
    }
     if(trigger.isupdate && trigger.isafter){
       account_handle.afterupdate (trigger.oldmap,trigger.newmap);
        
    }

}