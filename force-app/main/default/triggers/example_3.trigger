trigger example_3 on Account (before insert) {
map<id,Account>oldmap=Trigger.oldmap;
    map<id,Account>newmap=Trigger.newmap;
    set<id>keys=oldmap.keySet();
    list<id>accids=new list<id>();
    for(id k:keys){
        Account old=oldmap.get(k);
        Account acc=newmap.get(k);
        if(old.phone!=acc.phone){
            accIds.add(k);
        }
    }
    list<contact>contacts=[select id,Accountid,otherphone,mobilephone from contact where accountId in:accIds];
    for(contact c:contacts){
        Account old=oldmap.get(c.accountId);
        Account  acc=newmap.get(c.accountId);
        c.otherphone=old.phone;
        c.mobilephone=acc.phone;
    }
    update contacts;
}

/*trigger Account_Contact_Example on Account (before insert) {
    Map<Id,Account> oldMap =Trigger.oldMap;
    Map<Id,Account> newMap =Trigger.newMap;
    Set<Id> keys =oldMap.keySet();
    List<Id> accIds =new List<Id>();
    for(Id k :keys){
        Account old=oldMap.get(k);
        Account newAcc=newMap.get(k);
        if(old.Phone!=newAcc.Phone){
            accIds.add(k);
        }
    }
    List<Contact> contacts =[select id,AccountId ,otherphone ,mobilephone from Contact where accountId in:accIds];
    for(Contact c: contacts){
        Account old=oldMap.get(c.accountId);
        Account acc=newmap.geT(c.accountId);
        c.otherPhone=old.Phone;
        c.MobilePhone=acc.Phone;
    }
    update contacts;
}*/