trigger apex_example_14 on Account (after  update) {
    map<id,Account>oldmap=trigger.oldmap;
    map<id,Account>newmap=trigger.newmap;
    set<id>keys=oldmap.keyset();
    list<Accountteammember>teams=new list<Accountteammember>();
    user u=[select id from user where alias='mteja'];
    for(id k:keys){
        Account old=oldmap.get(k);
        Account newacc=newmap.get(k);
        if(old.rating!='hot' && newacc.rating=='hot'){
            Accountteammember atm =new Accountteammember();
            atm.Accountid=atm.id;
            atm.userid=u.id;
            atm.TeamMemberRole='Account Manager';
            atm.AccountAccessLevel='read';
            teams.add(atm);
        }
    }
    insert teams;

}