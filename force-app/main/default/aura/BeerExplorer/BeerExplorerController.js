({
	handlecompevent : function(component, event, helper) {
        var searchParam=event.getParam('SearchText');
		var action=component.get('c.searchBeer');
        action.setParams({
            searchParam:searchParam
         
        });
        action.setCallback(this,function(response){
            var state=response.getState();
            if(state==='SUCCESS'){
                var responsevalue=response.getReturnValue();
                component.set('v.beerList',responsevalue);
            }
            else{
                console.log(response.geterror());
            }
        });
        $A.enqueueAction(action);
	},
    updatecart: function(component, event, helper) {
        var params=event.getParam('beerRecord');
        var headercomp=component.find('header');
        
        headercomp.updateCart(params);
        
        
        
    }
})