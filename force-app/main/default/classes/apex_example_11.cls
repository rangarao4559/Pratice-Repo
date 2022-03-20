global class apex_example_11 implements database.Batchable <sobject> {
    global database.QueryLocator start(database.BatchableContext bc){
        string query='select id,name,stagename from opportunity';
        return database.getQueryLocator(query);
        
    }
    global void execute(database.BatchableContext bc,list<opportunity>scope){
        for(opportunity op:scope){
            op.stagename='closedwon';
            
        }
        update scope;
    }
    
    global void finish(database.BatchableContext bc){
        
    }

}