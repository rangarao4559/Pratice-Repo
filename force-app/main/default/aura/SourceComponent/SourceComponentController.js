({
	executeEvent : function(component, event, helper) {
        var compEvent=component.getEvent('SourceComponent');
		alert('I am in source component');
        compEvent.fire();
	}
})