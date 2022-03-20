public class record_page {
    @AuraEnabled
    public static list<Contact> getcontactlist(string accountId){
        list<Contact>contactlist=new list<Contact>([select Id,LastName,FirstName,Phone,Email from Contact where AccountId=: accountId ]);
       return contactlist;
      
    }

}