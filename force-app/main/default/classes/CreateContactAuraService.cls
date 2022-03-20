public class CreateContactAuraService {
@AuraEnabled
    public static void createcontact(list<contact> contactlist,string accountId){
        for (contact c:contactlist){
            c.AccountId=accountId;
        }
        insert contactlist;
        
    }
}