public class inlineEdit {
    
    // method for fetch Contact records list  
    @AuraEnabled
    public static List < Contact > fetchContact(id recid) {
        
        return [select id, lastname,Email,Description from Contact  where accountid=:recid ];
    }
    
    // method for update contact
    @AuraEnabled
    public static List < Contact > saveContact(List<Contact> lstContact) {
        system.debug('****'+lstContact);
        try{   update lstContact;
           }catch(Exception e){
               system.debug('******'+e.getMessage());
           }
        return lstContact;
    }
}