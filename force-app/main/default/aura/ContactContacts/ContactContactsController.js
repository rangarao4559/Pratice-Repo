({
	doHandleEvent : function(component, event, helper) {

		var conRecord=event.getParam('conRecord');
        console.log('conRecord',conRecord);
             
        var contactList=component.get('v.contactList');
        if(contactList){
            contactList.push(conRecord);
            component.set('v.contactList',contactList);
        }else{
           contactList = [];
          contactList.push(conRecord);
             component.set('v.contactList',contactList);
         
        }
	},
    handlesave : function(component, event, helper) { 
    var action=component.get('c.createcontact');
        action.setParams({
            contactlist:component.get('v.contactList'),
            accountId:component.get('v.recordId')
        });
        action.setCallback(this,function(response){
            var state=response.getState(); 
            alert(state);
            if(state==='SUCCESS' || state==='DRAFT'){
                 $A.get('e.force:refreshView').fire();
            }else if(state==='INCOMPLETE'){
                
            }else if(state==='ERROR'){
                
            }else{
                
            }
        
        },'ALL');
        $A.enqueueAction(action);
    
    
    },
    handleselectEvent : function(component, event, helper) {

var selectedRecord=event.getParam('contact') ;
      var createcon=component.find('createcontact');
        alert('867event Handled');
        createcon.selectRecord(selectedRecord);
        
    }
})