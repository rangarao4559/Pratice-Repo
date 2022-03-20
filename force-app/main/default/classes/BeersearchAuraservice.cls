public class BeersearchAuraservice {
    @AuraEnabled
public static list<sobject> searchBeer(string searchParam){
        string likeParam='%'+searchParam+'%';
        string Query=''; 
    if(searchParam!=null){
            Query='select Id,Name,Alcohol__c,Brewery_id__c,	Brewery_Name__c,Id__c,Price__c,	Remaining_Quantity__c,Tags__c,Total_Quantity__c from Beer__c where Name Like:likeParam Limit 10';
    }
    else{
        Query='select Id,Name,Alcohol__c,Brewery_id__c,	Brewery_Name__c,Id__c,Price__c,	Remaining_Quantity__c,Tags__c,Total_Quantity__c from Beer__c limit 10'; 
    }
            list<sobject> sobjectlist=Database.query(Query);
    return sobjectlist;
    }

}