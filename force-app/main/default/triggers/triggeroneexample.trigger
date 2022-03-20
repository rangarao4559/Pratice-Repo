trigger triggeroneexample on Account (after insert){
    list<opportunity>optylist=new  list<opportunity>();
    list<Account>accounts=Trigger.new;
    for(Account a:accounts){ 
        if(a.rating=='hot' && a.industry=='banking'){
            opportunity op=new opportunity();
            op.name=a.name;
            op.StageName='prospecting';
            op.accountid=a.id;
            op.closedate=system.today();
            optylist.add(op);
        }
    }  
    insert optylist;
}