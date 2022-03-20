public with sharing class accountSearchQuery {
    public accountSearchQuery() {

    }
    @AuraEnabled
    public static list<Sobject> getAccountList(string serachparam){
 string likeParam='%'+serachparam+'%';

     string Query='select Id,Name,Phone,Industry,AnnualRevenue from Account where Name Like:likeParam or Industry Like: likeParam or Phone Like:likeParam';
 list<sobject> sobjectlist=Database.query(Query);
    return sobjectlist;
    

    }
}