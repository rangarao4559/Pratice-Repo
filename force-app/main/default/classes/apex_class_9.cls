public class apex_class_9 {
    public string  accindustry;
    public void updatedata(){
        list<Account>accounts=[select id,ownerid from Account where industry=:accindustry];
        user u=[select id from user where alias='mteja'];
        for(Account a:accounts){
            a.ownerid=u.id;
        }
        update accounts;
    }

}