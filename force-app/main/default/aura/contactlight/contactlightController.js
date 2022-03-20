({
	doinit : function(component, event, helper) {
        var action=component.get('c.getcontactlist');
        //action.setStorable(); //clientsideache
        //action.setForeGround();
        //action.setBackGround();
        action.setParams({
            accountId:component.get('v.recordId'),
        });
            action.setCallback(this,function(response){
            var responsevalue=action.getReturnValue();
            console.log('responsevalue',responsevalue);
            component.set('v.contactlist',responsevalue)
                          
        },'SUCCESS');
            
        $A.enqueueAction(action);
            
        },
            
            viewdetails : function(component, event, helper){
                var eventsource=event.getSource ();
                var id=eventsource.get('v.name');
                
         var navEvt = $A.get("e.force:navigateToSObject");
    navEvt.setParams({
      "recordId": id,
      "slideDevName": "related"
    });
    navEvt.fire();
        
    },
                
       loded : function(component, event, helper) {    
           alert('scriptsloaded');
       }
})