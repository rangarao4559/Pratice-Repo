global class batch_2 implements Database.Batchable <sobject>{
  public string query;
    public string fieldname;
    public string val;
    global batch_2(string query,string fieldname,string val){
        this.query=query;
        this.fieldname=fieldname;
        this.val=val;
    }
    global database.QueryLocator start(database.BatchableContext bc){
        return database.getQueryLocator(query);
    }
    global void execute(database.BatchableContext bc,list<sobject>scope){
        for(sobject s:scope){
            s.put(fieldname,val);
                
                    }
        update scope;
    }
    global void finish(database.BatchableContext bc){
        
    }
    }