({
    initRecords: function(component, event, helper) {
        // call the apex class method and fetch Contact list  
        var action = component.get("c.fetchContact");
         action.setParams({
            'recid' : component.get("v.recordId")
          
        });
        action.setCallback(this, function(response) {
            
            if (response.getState() === "SUCCESS") {
                // set ContactList list with return value from server.
                component.set("v.ContactList", response.getReturnValue());
            }
        });
        $A.enqueueAction(action);
    },
    
    Save: function(component, event, helper) {
        // Check required fields(Name) first in helper method which is return true/false
        if (helper.requiredValidation(component, event)){
            // call the saveContact apex method for update inline edit fields update 
            var action = component.get("c.saveContact");
            action.setParams({
                'lstContact': component.get("v.ContactList")
            });
            action.setCallback(this, function(response) {
                console.log(response.getError());
                if ( response.getState() === "SUCCESS") {
                    // set ContactList list with return value from server.
                    component.set("v.ContactList", response.getReturnValue());
                    // Hide the save and cancel buttons by setting the 'showSaveCancelBtn' false 
                    component.set("v.showSaveCancelBtn",false);
                    alert('Updated...');
                }
            });
            $A.enqueueAction(action);
        } 
    },
    
    cancel : function(component,event,helper){
        // on cancel refresh the view (This event is handled by the one.app container. It’s supported in Lightning Experience, the Salesforce app, and Lightning communities. ) 
        var action = component.get("c.fetchContact");
        action.setCallback(this, function(response) {
            
            if (response.getState() === "SUCCESS") {
                // set ContactList list with return value from server.
                component.set("v.ContactList", response.getReturnValue());
            }
        });
        $A.enqueueAction(action);
        component.set("v.showSaveCancelBtn",false);
    } 
    
})