public class accounttest {
   @AuraEnabled     
    public static list<account> acc(){
        list<account> acclist=[select id,name from account order by name ASC];
        return acclist;
    }
}