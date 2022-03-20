({
	doinit : function(component, event, helper) {
        component.find('recordcreator').getNewRecord(
        'Beer__c',
            null,
            false,
            $A.getCallback(function(){
                var record=component.get('v.record');
                var error=component.get('v.recordError');
                if(error ||(record===null)){
                    console.log('while creating error',error);
             
                }else{
                    alert('template initialized');
                }
            })
        
        );
         
	},
    handlesave : function(component, event, helper) {
        component.set('v.recordFields.Id__c','4561');
        component.find('recordcreator').saveRecord(function(saveResult){
            if(saveResult.state === 'SUCCESS' || saveResult.state === 'DRAFT'){
               var showToast = $A.get('e.force:showToast');
                showToast.setParams({
                    "title":"record saved",
                    "type":"success",
                    "message":"Beer record has been save with RecordId:"+saveResult.Id
                    
                });
                showToast.fire();
            }else if(saveResult.state === 'INCOMPLETE'){
                
            }else if(saveResult.state ==='ERROR'){
                
            }else{
                
            }
        });
        
    }
})