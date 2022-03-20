({
doinit : function(component, event, helper) {
		    component.set('v.mapMarkers', [
            {
                location: {
                    Street: '525 S. Lexington Ave',
                    City: 'Burlington',
                    State: 'NC',
                    Country: 'USA',
        PostalCode: '94105'
                },

                title: 'The White House',
                description: 'Landmark, historic home.',
                icon:'standard:account'
            }
        ]);
        
    helper.onInit(component, event, helper);
    }
	
})