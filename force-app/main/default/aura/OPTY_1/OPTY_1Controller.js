({
call : function(component, event, helper) {
		var stagen=component.find("opty").get("v.value");
        var action =component.get("c.getdata");
    action.setParams({"StageName":stagen});
    action.setCallback(this,function(response){
        var state=response.getState();
        if(state==='SUCCESS'){
            console.log('ASDFG');
            var result=response.getReturnValue();
            component.set("v.oppty",result);
            console.log('myrequest');
            
        }else{
            console.log('error');
        }
        
    })
       $A.enqueueAction(action);
	}
})