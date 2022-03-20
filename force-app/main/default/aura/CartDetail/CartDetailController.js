({
doinit : function(component, event, helper) {
               
                    component.find('recordcreator').getNewRecord(
        'Address_Book__c',
            null,
            false,
            $A.getCallback(function(){
                var record=component.get('v.record');
                var error=component.get('v.recordError');
                if(error ||(record===null)){
                    console.log('while creating error',error);
             
                }else{
                   //alert('template initialized');
                console.log('successfully created');
                }
            })
        
        );
    var pageReference=component.get('v.pageReference');
    if(pageReference){ 

        var state=pageReference.state;
           // alert('ranga',state.c__cartId);
        if(state.c__cartId){
           
     //console.log('cartid',state.c__cartId);
           // component.set('v.CartItemList',state.cartId);
           component.set('v.CartId',state.c__cartId);
           var action=component.get('c.getCartItems');
             action.setParams({
           'cartId':state.c__cartId
        });
            action.setCallback(this, function(response){
                var stateresponse=response.getState();
        
                if(stateresponse==='SUCCESS' || stateresponse==='DRAFT'){
              //  alert(response.getReturnValue());
              var resultData=response.getReturnValue();
                    //console.log('result:',response.getReturnValue());
               var items=[];
                    var subTotal;
                    for(var key in resultData){
                        items.push(resultData[key]);
                        if(subTotal)
                            subTotal=subTotal+resultData[key].Total_Amount__c
                            else
                              subTotal=resultData[key].Total_Amount__c
                    }
                    component.set('v.subTotal',subTotal);
                    /*
                     * for(string item:resultData.keyset();)
                     * cartItem c=resultData.get(item);
                     * 
                     * 
                     */
                    
                component.set('v.CartItemList',items);
                      }
            else if(state === 'INCOMPLETE'){
                console.log('user is offline system dos not support offline');
                
            }
                else if(state==='ERROR'){
                    var errors=response.getError();
                    if(errors || errors[0].pageMessage){
                        console.log('pageerror',errors[0].pageMessage);
                    }
                    if(errors || errors[0].duplicateResults){
                        console.log('duplicate error',errors[0].duplicateResults);
                    }
                }
                
                    else{
                        
                    }
                
                
         
            });
             $A.enqueueAction(action);
        }else{
         //   component.set('v.CartItemList',[]);
        }
    }
		
	},
    homepage:function(component, event, helper) {
    var pageReference=component.find("navigation");
      var pageReferenceNav={
            "type":"standard__navItemPage",
         
            "attributes": {
                "apiName":"Beer_Explorer"
            },
             "state": {
              "cartItems":component.get('v.recordList')
            }
          
        };
    pageReference.navigate(pageReferenceNav, true);
		
	
    },
    applyCoupon:function(component, event, helper) {
 
        component.set('v.isCouponAplied',true);
        
        
    },
    doApplyCoupon:function(component, event, helper) {
    
    var CouponNo=component.find('CouponNo').get('v.value');
        alert(CouponNo);
        var cartid=component.get('v.CartId');
       alert(cartid);
        if(CouponNo){
        var action=component.get('c.checkCoupon');
        action.setParams({
            Name:CouponNo,
            cartId:cartid
        });
        action.setCallback(this,function(response){
            var state=response.getState();
          //  alert(state);
            if(state==='SUCCESS'|| state==='DRAFT'){
            var resultData=response.getReturnValue();
              //  alert(resultData);
                if(resultData) {
                    component.set('v.discountAmount',resultData);
                    component.set('v.errorDiscount',null);
                    component.set('v.isCouponSuccess',true);
                }else{
                    component.set('v.errorDiscount','coupon is not valid or expired');
                    component.set('v.discountAmount',null);
                     component.set('v.isCouponSuccess',false);
                }
              
                
            }
        });
        $A.enqueueAction(action);
        }else{
            alert('please enter your coupon no');
        }
    },
    docheckout:function(component, event, helper) {
        component.set('v.isCheckout',true);
        
    },
      dosaveaddress:function(component, event, helper) {
      var isValidAddress=helper.validate(component,event,helper);
          if(isValidAddress){
              var userId=$A.get("$SObjectType.CurrentUser.Id");
            // alert(userId);
            
               component.set('v.addressBook.User__c',userId);
        component.find('recordcreator').saveRecord(function(saveResult){
            if(saveResult.state === 'SUCCESS' || saveResult.state === 'DRAFT'){
               var showToast = $A.get('e.force:showToast');
                showToast.setParams({
                    "title":"record saved",
                    "type":"success",
                    "message":"Address Book record has been save with RecordId:"+saveResult.recordId
                    
                });
                showToast.fire();
                var addList=[];
                var addrList=component.get('v.addressList');
                if(addrList){
                addrList.push(component.get('v.addressBook'));
                    component.set('v.addressList',addrList);
                }else{
                      addList.push(component.get('v.addressBook'));
                    component.set('v.addressList',addList);
                }
                    component.set('v.isNewAddress',false);  
            }else if(saveResult.state === 'INCOMPLETE'){
                
            }else if(saveResult.state ==='ERROR'){
                
            }else{
                
            }
        });
          
          
          }
          
          
      },
    getAddress:function(component, event, helper){ 
        //alert('ranga');
        var isTrue=component.get('v.isCheckout');
        //alert(isTrue);
        if(isTrue){
            helper.fetchAdress(component,event,helper);
        }
    },
    onSelect:function(component, event, helper){ 
         var selected = event.getSource().get("v.text");
             var checked = event.getSource().get("v.value");
        //alert(selected);
         //  alert(checked);
         var alladdress=component.get('v.addressList');
        var selectedaddress=alladdress[selected];
        console.log('resulted',selectedaddress);
        component.set('v.selectedAddress',selectedaddress);
    },
    placeorder:function(component, event, helper){  
        var selectadd=component.get('v.selectedAddress');
        if(selectadd){
//alert(selectadd.Id); 
//alert(component.get('v.CartId')) ;
           var userId=$A.get("$SObjectType.CurrentUser.Id");
           //alert(userId);
            var action=component.get('c.createOrder'); 
      
            action.setParams({
                'cartId':component.get('v.CartId'),
                'addressId':selectadd.Id,
               'UserId' :userId,
                'subTotal':component.get('v.subTotal')
            });
        //  alert('arun');
           action.setCallback(this, function(response){
                //alert('ramuuuu');
                 var state=response.getState();
            if(state === 'SUCCESS' ||state === 'DRAFT'){  
                console.log('rangafyufgsadyu');
                var resultData=response.getReturnValue();
           //  alert(state);
            var showToast = $A.get('e.force:showToast');
                showToast.setParams({
                    "title":"record saved",
                    "type":"success",
                    "message":"your oredr has been placed successfully."
                    +"your tracking order no:"+resultData.split('####')[0]
                    
                });
                showToast.fire();
                
                  var pageReference=component.find("navigation");
      var pageReferenceNav={    
       "type": "standard__recordPage",
       "attributes": {
           "recordId": resultData.split('####')[1],
           "objectApiName": "Myorder__c",
           "actionName": "view"
       }

          
        };
    pageReference.navigate(pageReferenceNav, true);
                }
               
            else if(state === 'INCOMPLETE'){
                console.log('user is offline and system does not support offline');
            }else if(state ==='ERROR'){
                var errors=response.getError();
                console.log('errorsoccured',errors);
            }else{
               alert('erroorsss'); 
            }  
            });
            $A.enqueueAction(action);
                      
        }else{
            alert('please select address');
        }
        
        
    },
    addNewAddress:function(component, event, helper){  
        
    component.set('v.isNewAddress',true);    
        
    }
    })