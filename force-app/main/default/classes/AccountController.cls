public class AccountController {
 
    @AuraEnabled//Get Account Records
    public static List<Contact> getAccountList(id recid){

        List<Contact> accList = new List<Contact>();
        accList = [SELECT Id, Name FROM contact where accountid=:recid];
        return accList;
    }
}