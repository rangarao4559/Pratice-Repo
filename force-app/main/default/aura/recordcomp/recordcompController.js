({
	doinit : function(component, event, helper) {
		var action=component.get('c.getcontactlist');
        action.setParams({
            accountId:component.get('v.recordId'),
            
        });
        action.setCallback(this,function(response){
            var resvalue=response.getReturnValue();
            console.log('resvlue',resvalue);
            component.set('v.contactlist',resvalue)
        },'SUCCESS');
        $A.enqueueAction(action);
    
	},
    
    viewdetails : function(component, event, helper) {
        var eventsource = event.getSource ();
        var id = eventsource.get('v.name');
     
         var navEvt = $A.get("e.force:navigateToSObject");
    navEvt.setParams({
      "recordId": id,
      "slideDevName": "related"
    });
    navEvt.fire();
        
    },
    
    
})