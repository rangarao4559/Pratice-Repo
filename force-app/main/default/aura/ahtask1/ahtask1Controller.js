({
	callme : function(component, event, helper) {
		var action=component.get("c.accs");
        action.setCallback(this,function(response){
                       var state=response.getState();
                           if(state==="SUCCESS"){
            console.log('success');
            var result=response.getReturnValue();
            component.set("v.accounts",result);
        }
        else{
            console.log('fail');
        }
        
        });
        $A.enqueueAction(action);
	},
      doclick: function(cmp,event,helper){
              var row = event.currentTarget.Id;
    var acc=cmp.get("v.accounts");
        alert(JSON.stringify(acc[row])+"raju");
      cmp.set("v.aco",acc[row]);

   
}

      
      })