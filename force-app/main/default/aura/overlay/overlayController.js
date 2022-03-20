({
	handleShowModal : function(component, event, helper) {
        component.find('overlayLib').showCustomModal({
                       header: "Application Confirmation",
                       body: 'this is testing',
                        footer:'footer',
                       showCloseButton: true,
                       closeCallback: function() {
                           alert('You closed the alert!');
                       }
                   });
	},
    navigateURL : function(component, event, helper) {
       var pageReference=component.find("navigation") ;
            var pageReferencenav = {
 
    "type": "standard__component",
    "attributes": {

        "componentName": "c__BeerExplorer"   
    },   
    "state": {
        "myAttr": "attrValue"   
    }
        };
        pageReference.navigate(pageReferencenav);
               
    },
      handleSuccess : function(component, event, helper) {
      },
     handleload : function(component, event, helper) {
      },
     handleSubmit : function(component, event, helper) {
         alert('handle submitted');
      },
     createButton : function(component, event, helper) {
         $A.createComponent('lightning:button',
                            {
                            label:"press",
                            value:"press",
                           onclick:component.getReference("c.handleSubmit")
                            }, function(newbutton, status, errormessage){
                                alert(status);
                                if(status === 'SUCCESS'){
                                    var body=component.get('v.body');
                                    body.push(newbutton);
                                    component.set('v.body',body);
                                }
                            });
               },
    
})