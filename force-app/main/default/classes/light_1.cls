public class light_1 {
      @AuraEnabled
    public static list<account>getacc(){
list<Account>acclist=[select id, Name,Industry,(select id,LastName, FirstName from contacts) from Account limit 10];
 return acclist;
    }
}