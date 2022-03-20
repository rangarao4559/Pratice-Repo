public class oppclass {
    public String currentRecordId {get;set;}
    public account acclist {get; set;}
    public list<opportunity> oppdata {get; set;}
    
    public oppclass(ApexPages.StandardController controller) {
        currentRecordId  = ApexPages.CurrentPage().getparameters().get('id');
        oppdata=[Select Id,Name,Amount,StageName,AccountId,Account.name from opportunity where AccountId=:currentRecordId ORDER BY Amount DESC ];
       	}
}