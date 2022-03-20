public class CartDetailsAuraServices {
    private static list<Coupon__c> getcoupon(string Name){
        list<Coupon__c> coupon=[select Id,Price__c,Expired__c,Remaining_Quantity__c from Coupon__c where Name=: Name] ;
        return coupon;
    }
    
     @AuraEnabled
    public static Decimal checkCoupon(string Name,String cartId){
        list<Coupon__c> couponList=getcoupon(Name);
        if(couponList!=null && couponList.size()>0 && !couponList[0].Expired__c && couponList[0].Remaining_Quantity__c >0 ){
            cart__c cart=new cart__c(Id=cartId,coupon__c=couponList[0].Id);
            update cart;
            return couponList[0].Price__c;
        }
        else{
            return null;
        }
       
    }
    @AuraEnabled
   
    public static string createCartItems(list<string> beerlist,string CartId){
        list<Cart_Item__c> cartItemList=new list<Cart_Item__c>();
        list<Cart_Item__c> cartItemToUpdate=new list<Cart_Item__c>();
 
        map<Id,Cart_Item__c> beerQntyMap=getCartItems(cartId);
        for(string beer:beerlist){
            if(beerQntyMap!=null && beerQntyMap.containsKey(beer)) {
               Cart_Item__c it=beerQntyMap.get(beer);
                Cart_Item__c item=new Cart_Item__c(
                Item_Quantity__c=it.Item_Quantity__c+1,
            
                    Id=it.Id
                );
                cartItemToUpdate.add(item);
            }else{
                Integer Qty=1;
                Cart_Item__c item=new Cart_Item__c(
                Cart__c=cartId,
                Beer__c=beer,
                    Item_Quantity__c=Qty
                    	
                );
                cartItemList.add(item);
            }           
        }
        insert cartItemList;
        if(cartItemToUpdate!=null&&cartItemToUpdate.size()>0)
            update cartItemToUpdate;
        return cartId;
    } 
    @AuraEnabled
    public static string getCartId(List<string> beerList){
        list<Cart__c> cartList=getCart();
        if(cartList !=null && cartList.size()>0){
            createCartItems(beerList,cartList[0].Id);
            return cartList[0].Id;
        }else{
            Cart__c cart=new Cart__c(Coupon__c=getCoupon('Default')[0].Id,Cart_Id__c=string.valueOf(Math.random()),
                                    Cart_Status__c='Open',Is_Active__c=true,User__c=UserInfo.getUserId());
            insert cart;
              createCartItems(beerList,cart.Id);
            return cart.Id;
        }
        
    }
    private static list<Cart__c> getCart(){
         list<Cart__c> cartList=[select Id,Name from Cart__c where User__c=: UserInfo.getUserId() AND Is_Active__c= true ];
    return cartList;
    
    }
    @AuraEnabled
    public static map<Id,Cart_Item__c> getCartItems(string cartId){
        
        list<Cart_Item__c> existingItemList=[select id,Name ,Item_Quantity__c,Beer__c,Total_Amount__c from Cart_Item__c where Cart__c=: CartId];
        map<Id,Cart_Item__c> beerQntyMap=new map<Id,Cart_Item__c>();
        for(Cart_Item__c item:existingItemList){
            if(!beerQntyMap.containsKey(item.Beer__c)){
                beerQntyMap.put(item.Beer__c,item);
            }
        }
        return beerQntyMap;
        
    }
    
    @AuraEnabled
    public  static void deleteItem(string cartItemId){
        Database.delete(cartItemId);
        
    }
        @AuraEnabled(cacheable=true)
    public static string fetchAddressBook(){
        list<Address_Book__c> addressList=[select Id,Name,Street__c,
                                         	State__c,Country__c,City__c,Postal_Code__c
                                          from Address_Book__c where User__c=:userinfo.getUserId()];
        return JSON.serialize(addressList);
    }
    
    
       @AuraEnabled
    public static string createOrder(string cartId, string addressId,string UserId,Decimal subTotal){
    Myorder__c  Myorder=new Myorder__c(
    	Cart__c=cartId,
        Shipping_Address__c=addressId,
        	User__c=UserId,
        subTotal__c=subTotal
    );
        Cart__c cart=new Cart__c(Id=cartId,	Cart_Status__c='Closed',Is_Active__c=false);
   
        
    
    insert Myorder;
        update cart;
        Myorder__c ord=[select Id,Name from Myorder__c where Id=: Myorder.Id];
        return ord.Name+'#####'+ord.Id;
    }   
}