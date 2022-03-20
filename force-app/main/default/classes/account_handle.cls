/*public class account_handle {
    public static void beforeinsert(list<Account>accounts){
        set<string>setnames=new set<string>();
        for(Account a:accounts){
            setnames.add(a.name);
            
        }
        list<Account>acclist=[select id,name from account where name in:setnames];
        set<string>dupnames=new set<string>();
        if(acclist.size()>0){
            for(Account a:acclist){
                dupnames.add(a.name);
            }
            }
        for(Account a:Accounts){
            boolean flag=dupnames.contains(a.name);
            a.addError('duplicate record found');
        }
        
        
    }
        
    public  void beforeupdate(list<Account>accounts){
        user u=[select id from user where alias='mteja'];
        for(Account a:accounts){
            a.ownerId=u.Id;
        }
    }
    public static void afterupdate(map<id,Account>oldmap,map<id,Account>newmap){
        set<id>keys=oldmap.keyset();
        user u=[select id from user where alias='mteja'];
        list<Accountteammember>teams=new list<Accountteammember>();
        for(id k:keys){
            Account old=oldmap.get(k);
    Account newacc=newmap.get(k);
            if(old.rating!='hot' && newacc.rating=='hot'){
                Accountteammember atm=new Accountteammember();
                atm.AccountId=k;
                atm.AccountAccessLevel='Read';
                atm.TeamMemberRole='Account manager';
                atm.UserId=u.id;
                teams.add(atm);
            }
        }
        
        insert teams;
    }
        
    }
*/
 
 public class account_handle { 
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
 public  void beforeupdate(list<Account>accounts){
        user u=[select id from user where alias='mteja'];
        for(Account a:accounts){
            a.ownerId=u.Id;
        }
    }
    public static void afterupdate(map<id,Account>oldmap,map<id,Account>newmap){
        set<id>keys=oldmap.keyset();
        user u=[select id from user where alias='mteja'];
        list<Accountteammember>teams=new list<Accountteammember>();
        for(id k:keys){
            Account old=oldmap.get(k);
    Account newacc=newmap.get(k);
            if(old.rating!='hot' && newacc.rating=='hot'){
                Accountteammember atm=new Accountteammember();
                atm.AccountId=k;
                atm.AccountAccessLevel='Read';
                atm.TeamMemberRole='Account manager';
                atm.UserId=u.id;
                teams.add(atm);
            }
        }
        
        insert teams;
    }
        
}