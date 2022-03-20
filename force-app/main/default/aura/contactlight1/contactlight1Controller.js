({
	createc : function(component, event, helper) {
		var action=component.get('c.createcontact');
        var contc=component.get('v.createcontact');
      
            
        action.setParams({
            con:component.get('v.createcontact'),
            AccountId:component.get('v.accId')
        });
        action.setCallback(this,function(response){
            var state=response.getState();
       
            if(state==='SUCCESS' || state==='DRAFT' ){
                var responsevalue=response.getReturnValue();
                 var componentEvent=component.getEvent('quickcontact');
            componentEvent.setParams({
                Contactrecord:responsevalue
            });
                componentEvent.fire();
            }
            else if(state==='INCOMPLETE') {
                console.log('error');
            }
                else if(state==='ERROR'){
                    var errors=response.getError();
                    console.log('ERROR',errors[0].duplicateResults);
                    console.log('ERROR',errors[0].fieldErrors);
                    console.log('ERROR',errors[0].pageErrors);
                    if(errors ||errors[0].message){
                        
                    }
                    
                }
        },'ALL');
                
        $A.enqueueAction(action);
            
        
            
       }
                          
})