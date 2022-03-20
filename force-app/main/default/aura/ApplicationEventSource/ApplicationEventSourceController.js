({
		executeEvent : function(component, event, helper) {
            alert('Iam in source component');
            var AppEvent=$A.get('e.c:appEvent');
		
        AppEvent.fire();
	}
})