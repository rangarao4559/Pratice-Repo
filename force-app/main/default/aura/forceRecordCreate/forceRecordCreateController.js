({  
    doinit:function(component, event, helper) {
        var options=[
        { label: 'English', value: 'en' },
        { label: 'German', value: 'de' },
        { label: 'Spanish', value: 'es' },
        { label: 'French', value: 'fr' },
        { label: 'Italian', value: 'it' },
        { label: 'Japanese', value: 'ja' }];
        component.set('v.options',options);
        
        
        
        
    },
	createcontact : function(component, event, helper) {
        var createrecord=$A.get('e.force:createRecord');
        createrecord.setParams({
            "entityApiName": "Contact",
            "defaultFieldValues":{
                'AccountId':component.get('v.recordId'),
                'Email':'ranga339@gmail.com'
            }
        });
        createrecord.fire();
	},
    editcontact : function(component, event, helper) {
        var editrecord=$A.get('e.force:editRecord');
        editrecord.setParams({
            "recordId":component.get('v.recordId')
            
        });
        editrecord.fire();
	},
     handleChange: function (cmp, event) {
        // This will contain an array of the "value" attribute of the selected options
        var selectedOptionValue = event.getParam("value");
        alert("Option selected with value: '" + selectedOptionValue.toString() + "'");
    }
})