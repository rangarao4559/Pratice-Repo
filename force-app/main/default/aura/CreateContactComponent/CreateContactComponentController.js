({
	handleReview : function(component, event, helper) {
       
var isValid=helper.validateFields(component, event, helper);
        if(isValid){
            var componentEvent=component.getEvent('CreateContacts');
            componentEvent.setParams({
                'conRecord':component.get('v.ContactRecord')  
            });
           componentEvent.fire();
        }else{
            alert('please fill all required fields');
        }
	},
    selectRecord : function(component, event, helper) {
     alert('in create component');   
        var params=event.getParam('arguments');
        if(params){
            var contactRecord=params.contact;
            console.log('contactRecordss:',contactRecord.LastName);
            component.set('v.ContactRecord',contactRecord);
        }
        
        
        
        
    }
})