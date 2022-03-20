({
	doclick : function(component, event, helper) {
		var childs=component.find('childcomp');
        childs.child('iam from parent component',' iam from second attribute');
           
	},
    acclick : function(component, event, helper) {
    alert('calling the parent controller from child');
    
    }
})