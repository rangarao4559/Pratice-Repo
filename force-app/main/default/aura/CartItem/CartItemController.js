({
	deleteCartItem : function(component, event, helper) {
		var cartItemId=event.currentTarget.id;
      var itemid=alert(cartItemId);
        var action=component.get('c.deleteItem');
        action.setParams({
            "cartItemId":cartItemId
        });
        action.setCallback(this,function(response){
            var state=response.getState();
            alert(state);
            if(state="SUCCESS"){
                $A.get('e.force:refreshView').fire();
            }else{
                
            }
        });
      $A.enqueueAction(action);  
	}
})