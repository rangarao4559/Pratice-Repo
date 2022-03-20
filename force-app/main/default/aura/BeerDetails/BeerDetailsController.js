({
	doorder : function(component, event, helper) {
       var pageReference=component.find("navigation") ;
            var pageReferencenav = {
 
    "type": "standard__component",
    "attributes": {

        "componentName": "c__CreateBeerorder"   
    },   
    "state": {
        "c__BeerId": component.get('v.beerId')
    }
        };
        pageReference.navigate(pageReferencenav);
               
    }
})