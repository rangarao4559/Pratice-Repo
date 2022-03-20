({
dosearch : function(component, event, helper) {
		var componentEvent=component.getEvent('BeerEvent');
    var searchParam=component.find('SearchInput').get('v.value');
    componentEvent.setParams({
        SearchText:searchParam
    });
    componentEvent.fire();
	}
})