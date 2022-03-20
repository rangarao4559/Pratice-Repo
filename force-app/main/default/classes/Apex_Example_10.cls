global class Apex_Example_10 implements Database.Batchable <sobject> {
    global Database.querylocator start(Database.BatchableContext bc){
        string query='select id,name,type from Account';
        return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext bc,list<Account> accounts){
        for(Account a:accounts){
            a.type='new customer';

        }
        update accounts;
        
    }
    global void finish(Database.BatchableContext bc){
        
    }

}