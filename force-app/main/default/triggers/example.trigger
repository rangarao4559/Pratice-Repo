trigger example on Account (after update) {
// Get the id of user student
    User u =[select id from user where alias='mteja'];
    List<AccountTeamMember> teams =new List<AccountTeamMember>();
    // Fetch all the old version of accounts 
    Map<Id,Account> oldMap =Trigger.oldMap;
    // Fetch all the new Version of accounts
    Map<Id,Account> newMap =Trigger.newMap;
    // Fetch all the keys
    Set<Id> keys =oldMap.keySet();
    //Take one by one key and get old and new version of records
    for(Id k:keys){
        Account old =oldMap.get(k);
        Account newAcc=newMap.get(k);
        // Check weather rating is modified as hot
        if(old.rating!='Hot' && newAcc.rating=='Hot'){
            AccountTeamMember atm =new AccountTeamMember();
            atm.AccountId=k; // k is the id of the account
            atm.UserId=u.id;
            atm.TeamMemberRole='Account Manager';
            atm.AccountAccessLevel='Read';
            teams.add(atm);
        }
    }
    insert teams;
}