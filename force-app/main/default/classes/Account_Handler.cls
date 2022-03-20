public class Account_Handler {
 public static void beforeInsert(List<Account> accounts){
       // Fetch all the names of those accounts which we are inserting 
       Set<String> setNames =new Set<String>();
       for(Account a: accounts){
          setNames.add(a.name);  
       }
       // Check weather we have any duplicate records in the database with samenames what we are inserting 
       List<Account> accList =[select id,Name from Account where name in:setNames];
       Set<String> dupNames =new Set<String>();
       if(accList.size()>0){
           for(Account a: accList){
               dupNames.add(a.name);
           }
       }
       // Take one by one new Record check weather thier names are in duplicate list 
        for(Account a: accounts){
            Boolean flag=dupNames.contains(a.name); 
            a.addError('Duplicate Record Found');
        }
    }
    public   void beforeUpdate(List<Account> accounts){
        User u =[select id from user where alias='agatt'];
        for(Account a: accounts){
            a.ownerId=u.Id;
        }
    }
    public static void afterUpdate(Map<Id,Account> oldMap ,Map<Id,Account> newMap){
        Set<Id> keys =oldMap.keySet();
        User u =[select id from user where alias='slive'];
        List<AccountTeamMember> teams =new List<AccountTeamMember>();
        for(Id k:keys){
            Account old=oldMap.get(k);
            Account newAcc=newMap.get(k);
            if(old.rating!='Hot' && newAcc.rating=='Hot'){
                AccountTeamMember atm =new AccountTeamMember();
                atm.AccountId=k;
                atm.AccountAccessLevel='Read';
                atm.TeamMemberRole='Account Manager';
                atm.UserId=u.Id;
                teams.add(atm);
            }
        }
        insert teams;
    }
}