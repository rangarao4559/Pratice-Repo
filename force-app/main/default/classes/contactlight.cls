public class contactlight {
     @AuraEnabled
    public static list<Contact> getcontactlist(string accountId){
        list<Contact>contactlist=new list<Contact>([select Id,LastName,FirstName,Phone,Email from Contact where AccountId=: accountId ]);
       return contactlist;
    }
    
    @AuraEnabled
    public static Contact createcontact(Contact con,Id AccountId){
        con.AccountId=AccountId;
        insert con;
        return con;
    }

}