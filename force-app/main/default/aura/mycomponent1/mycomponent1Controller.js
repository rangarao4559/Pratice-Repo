({
	doclick: function(component, event, helper) {
        alert(component.isValid());
        alert(component.getName());
        alert(component.get('v.whom'));
        component.set('v.whom',"slds");
        alert(component.get('v.whom'));
        var ageco=component.find('input11');
        alert(ageco.get('v.value'));
       ageco.set('v.value',55);
		
	}
})