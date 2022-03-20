({
	calculate : function(component, event, helper) {
		var amount=component.get("v.amount");
        var rate=component.get("v.rate");
        var years=component.get("v.years");
       var interst=(amount*rate*years)/100 ;
        component.set("v.interst",interst);
	}
})