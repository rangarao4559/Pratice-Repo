public class ahtask1 {
    @AuraEnabled
    public static  list<account> accs(){
        list<account>acc=[select id,Name,industry,(select id,Name,Phone from Contacts limit 1)from account  limit 10];
        return acc;
    }
    

}