({
	
 handledelete : function(component, event, helper) {
     
        component.find('recordhandler').deleteRecord($A.getCallback(function(deleteResult){
            if(deleteResult.state === 'SUCCESS' || deleteResult.state === 'DRAFT'){
               var showToast = $A.get('e.force:showToast');
                showToast.setParams({
                    "title":"record deleted",
                    "type":"success",
                    "message":"Beer record has been deleted"
                    
                });
                showToast.fire();
                var pageReferences=component.find("navreferrence");
    
    var pageReferenceNav = {
            type: 'standard__objectPage',
            attributes: {
                objectApiName: 'Beer__c',
                actionName: 'list'
            },
            state: {
           
            }
        };
        
                pageReferences.navigate(pageReferenceNav);
        
            }else if(deleteResult.state === 'INCOMPLETE'){
                
            }else if(deleteResult.state ==='ERROR'){
                
            }else{
                
            }
        }));
                                                    }
    
})