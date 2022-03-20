public class apex_class_8 {
    public void updatedate(){
        list<Account>accounts=[select id,name,phone from Account];
        for(Account a:accounts){
            a.phone='2222';
            
        }
        update accounts;
    }
    

}