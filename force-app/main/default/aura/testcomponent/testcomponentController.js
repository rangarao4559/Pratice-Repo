({
	doinit : function(component, event, helper) {
         component.set('v.columns', [
            {label: 'Opportunity name', fieldName: 'Id', type: 'text'},
            {label: 'Account name', fieldName: 'Name', type: 'text'}
        
        ]);
	var action=component.get('c.acc');
        action.setCallback(this,function(response){
           var state=response.getState();
            if(state=='SUCCESS'){
                component.set('v.data',response.getReturnValue());
           
            }else{
                alert('jiiiii')
            }
        });
     $A.enqueueAction(action);
	}
})