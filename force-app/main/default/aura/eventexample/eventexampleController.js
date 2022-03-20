({
	dochange : function(component, event, helper) {
		//alert('value changed');
	},
    value : function(component, event, helper) {
        component.set('v.test','testing');
        var apevent=$A.get('e.c:apevent');
        apevent.fire();
    },
     doclick : function(component, event, helper) {
      //  component.set('v.test','123456');
    }
})