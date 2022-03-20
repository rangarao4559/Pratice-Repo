public class Allaccounts_mapcontroller {
    @AuraEnabled
    public static list<Account> fetchAccounts(){
        list<Account> acclist=new list<Account>();
        acclist=[select Id,Name,ShippingStreet,ShippingCity,ShippingPostalCode,ShippingState,ShippingCountry,Description from Account 
                 where ShippingStreet!=null AND ShippingCity!=NULL AND  ShippingPostalCode!=null AND ShippingState!=null AND
                 ShippingCountry!=null];
        return acclist;
    }

}