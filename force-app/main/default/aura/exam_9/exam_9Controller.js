({
	add : function(component, event, helper) {
		var aval=component.find("aval").get("v.value");
        var bval=component.find("bval").get("v.value");
        var cval=parseInt(aval)+parseInt(bval);
        component.find("cval").set("v.value",cval);
	},
		
	multi : function(component, event, helper) {
		var aval=component.find("aval").get("v.value");
        var bval=component.find("bval").get("v.value");
        var cval=parseInt(aval)*parseInt(bval);
        component.find("cval").set("v.value",cval);
	},
    
cancel : function(component, event, helper) {
     component.find("aval").set("v.value",'');
		 component.find("bval").set("v.value",'');
        component.find("cval").set("v.value",'');
	}	
})