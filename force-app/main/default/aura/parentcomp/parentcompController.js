({
	doclick : function(component, event, helper) {
        var childcomp=component.find('childcomp');
        childcomp.child('Iam from parent component');
		
	},
    dohandle:function(component, event, helper) {
        alert('parent component');
        
        
    }
})