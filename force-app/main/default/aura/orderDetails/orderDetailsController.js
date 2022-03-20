({
	doinit : function(component, event, helper) {
        var pagRef=component.get('v.pageReference');
        if(pagRef){
            var state=pagRef.state;
            component.set('v.orderId',state.c__orderId);    
            component.find('recordViewer').reloadRecord();

        }
		
	}
})