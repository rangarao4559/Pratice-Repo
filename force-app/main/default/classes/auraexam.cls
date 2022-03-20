public class auraexam {
    @AuraEnabled
    public static list<account> getdata(){
        list<account>acclist=[select id,name,industry from account limit 4];
        return acclist;
    }

}