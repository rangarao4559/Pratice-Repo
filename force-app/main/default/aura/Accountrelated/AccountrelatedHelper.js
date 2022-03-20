({
    getAccounts : function(component, event) {
        var action = component.get("c.getAccountList");
        action.setParams({
            'recid' : component.get("v.recordId")
          
        });
        action.setCallback(this,function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                var result = response.getReturnValue();
                
                component.set("v.accList", result);
            }
        });
        $A.enqueueAction(action);
    },
})