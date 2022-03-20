({
	validateFields : function(component, event, helper) {
        var isVaild=component.find('newContact').reduce(function(validFields,inputcomp){
            inputcomp.showHelpMessageIfInvalid();
            inputcomp.set('v.validity',{valid:false,badInput:true});
            return validFields && inputcomp.get('v.validity').valid;
        },true);
        return isVaild;
		
	}
})