public class OPTY_1 {
 @AuraEnabled
    public static list<opportunity> getdata(string StageName){
        list<opportunity>optylist=[select Id,Name,StageName,CloseDate from opportunity limit 6];
        return optylist;
    }

}