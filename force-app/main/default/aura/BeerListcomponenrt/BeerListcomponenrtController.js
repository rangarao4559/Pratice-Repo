({
	showinfo : function(component, event, helper) {
		var eventsource=event.getSource();
        var beerobj=eventsource.get('v.name');
        console.log('ranga:'+beerobj);
        component.set('v.beerId',beerobj);
        {
            $A.createComponent("c:BeerDetails",
                            {
                                "beerId":beerobj
                                  }, function(BeerDetails, status, errormessage){
                               
                                if(status === 'SUCCESS'){
    component.find('overlayLib').showCustomModal({
                       header: "BeerDetails",
                       body: BeerDetails,
                        footer:'footer',
                       showCloseButton: true,
                       closeCallback: function() {
                          
                       }
                   });
                                }
                                      else if(status==="INCOMPLETE"){
                                          console.log("no response from client side");
                                      }
                                       else if(status==="ERROR"){
                                           console.log("ERROR:"+errormessage);
                                      }
                                      
                            });
               }
        
	},
    AddCart:function(component, event, helper) {
        		var eventsource=event.getSource();
        var beerId=eventsource.get('v.name');
        var index=eventsource.get('v.value');
        var selectedBeer=component.get('v.recordList')[index];
        console.log('selectedbeeeerrrr',selectedBeer.Id);
      
        var addtocartEvent=component.getEvent('addtoCart');
        addtocartEvent.setParams({
            beerRecord:selectedBeer
        });
        addtocartEvent.fire();
        
    }
})