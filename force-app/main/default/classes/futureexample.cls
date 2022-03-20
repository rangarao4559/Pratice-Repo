public class futureexample {
    
    @future
    public static void callMe(){
        Account acc =new Account();
        acc.Name='Wipro';
        acc.Phone='040-1234';
        acc.Industry='Banking';
        insert acc; 
    }
    public void create(){
        Profile p = [SELECT Id FROM Profile WHERE Name='Read only'];
        UserRole r = [SELECT Id FROM UserRole WHERE Name='ceo'];
        // Create new user with a non-null user role ID 
        User u = new User(alias ='mteja', email='kanakaranga339@gmail.com', 
            emailencodingkey='UTF-8', lastname='kl', 
            languagelocalekey='en_US', 
            localesidkey='en_US', profileid = p.Id, userroleid = r.Id,
            timezonesidkey='America/Los_Angeles', 
            username='abc@314.com');
        insert u;
        callMe();
    }
}