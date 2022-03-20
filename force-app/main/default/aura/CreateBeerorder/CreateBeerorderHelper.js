({
	validateForm : function(component, event, helper) {
		var isValid = component.find('border').reduce(function (validSoFar, inputCmp) {
            inputCmp.showHelpMessageIfInvalid();
            inputCmp.set('v.validity', {valid:false, badInput :true});
            return validSoFar && inputCmp.get('v.validity').valid;
        }, true);
        return isValid; 
	}, 
    updateBeerqty : function(component, event,totalqnty,recordId ){
    var beerqty = component.get('v.simpleRecord.Total_Quantity__c');
       // alert(beerqty);
    component.set('v.simpleRecord.Total_Quantity__c',parseInt(beerqty)-parseInt(totalqnty));
     component.find("recordEditor").saveRecord(function(saveResult) {
            if (saveResult.state === 'SUCCESS' || saveResult.state === 'DRAFT') {
        var pageReference=component.find("navigation") ;
            var pageReferencenav = {
 
    "type": "standard__component",
    "attributes": {

        "componentName": "c__orderDetails"   
    },   
    "state": {
        "c__orderId":recordId
    }
        };
                
        pageReference.navigate(pageReferencenav);
              
            } else if (saveResult.state === 'INCOMPLETE') {
                console.log("User is offline, device doesn't support drafts.");
            } else if (saveResult.state === 'ERROR') {
                console.log('Problem saving contact, error: ' + 
                            JSON.stringify(saveResult.error));
                var resultsToast = $A.get("e.force:showToast");
                resultsToast.setParams({
                    "title": "Error While Placing Your Order.",
                    "message": JSON.stringify(saveResult.error),
                    "type" : "success"
                });
                resultsToast.fire();
            } else {
                console.log('Unknown problem, state: ' + saveResult.state +
                            ', error: ' + JSON.stringify(saveResult.error));
            }
        });
        
    }
})