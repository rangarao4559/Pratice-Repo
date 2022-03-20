trigger apex_example_13 on Account (before insert) {
    for(Account a:trigger.new){
        a.rating='hot';
        a.ownership='public';
    }

}