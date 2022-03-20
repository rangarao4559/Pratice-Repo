public class DataTableAuraServices {
   @AuraEnabled
    public static list<Account> fetchAccount(){
        return [select Id,Name,Rating,Industry,Phone from Account limit 10];
    }
}