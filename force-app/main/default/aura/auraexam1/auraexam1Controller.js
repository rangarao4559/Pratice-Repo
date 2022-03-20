({
	call : function(component, event, helper) {
		var action=component.get("c.getdata");
        action.setCallback(this,function(response){
            var wide=response.getState();
            if(wide==='SUCCESS'){
                console.log('success');     
                var result=response.getReturnValue();
                console.log(result);
                 component.set("v.accounts",result);
            }
            else{
                console.log('error');
            }
        });
        $A.enqueueAction(action);
	}
})