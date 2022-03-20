global class batch_1 implements database.batchable <sobject> {
    global database.QueryLocator start(database.Batchablecontext bc){
        string query='select id,name,rating from account';
        return database.getQueryLocator(query);
    }
    global void execute(database.BatchableContext bc,list<account>scope){
        for(account a:scope){
            a.rating='hot';
        }
        update scope;
    }
    global void finish(database.BatchableContext bc){
        
    }

}