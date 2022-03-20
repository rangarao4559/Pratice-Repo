({
	goTocart : function(component, event, helper) {
  
        var action=component.get('c.getCartId');
       // console.log('selectedbeer',component.get('v.recordList'));
        action.setParams({
           'beerList':component.get('v.beerNameList') 
        });
        
        action.setCallback(this, function(response){
        
            var state=response.getState();
        
            //alert(state);
            if(state==='SUCCESS' || state==='DRAFT'){
              //  alert(response.getReturnValue());
                var pageReference=component.find("navigation");
        var pageReferenceNav={

            type:"standard__component",
         
            attributes: {
                "componentName":"c__CartDetail"
            },
            
             state: {
              "c__cartId":response.getReturnValue()
            }
       
       
        };
    pageReference.navigate(pageReferenceNav, true);
                
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
		
	},
createCartItems : function(component, event, helper) {
//console.log('selectedbeer',component.get('v.recordList'));
 var names=[];
    for(var i=0; i<component.get('v.recordList').length; i++){
        names.push(component.get('v.recordList')[i].Id);
    }
        //console.log(names);
        component.set('v.beerNameList',names);

    }
        
})