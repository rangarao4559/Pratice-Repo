({
	onInit : function(component, event, helper) {
		var action=component.get('c.fetchAccounts');
        action.setCallback(this,function(response){
            var state=response.getState();
            if(state==='SUCCESS'  || state==='DRAFT'){
              
                var resultdata=response.getReturnValue();
                console.log('return'+resultdata);
                var mapMarkers=[];
                for(let i=0; i < resultdata.length; i++){
                    mapMarkers.push( {
                location: {
                    Street: resultdata[i].ShippingStreet,
                    City: resultdata[i].ShippingCity,
                    State: resultdata[i].ShippingState,
                    Country:resultdata[i].ShippingCountry,
                   PostalCode: resultdata[i].ShippingPostalCode
                },

                title:resultdata[i].Name,
                description: resultdata[i].Description,
                icon:'standard:account'
            });
                }
                console.log('mylist:',mapMarkers);
                 component.set('v.zoomLevel', 4);
                 component.set('v.mapMarkers',mapMarkers);
            }
            else{
                var errors=response.getError();
                console.log('Error',errors);
            }
        });
        $A.enqueueAction(action);
	}
})