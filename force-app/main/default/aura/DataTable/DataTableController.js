({
	doinit : function(component, event, helper) {
        var actions=[{
            label:'Show Details',
            name :'show_details',
            iconName:'action:preview'
        },
                     {
                         label:'Delete',
                         name:'Delete',
                         iconName:'action:delete'
                         
                     }];
                    
		   component.set('v.columns', [
               {label: 'Account Name', fieldName: 'Name', type: 'text',editable: true},
          {label: 'Industry', fieldName: 'Industry', type: 'text'},
               {label: 'Rating', fieldName: 'Rating', type: 'text'},
               {label: 'Phone', fieldName: 'Phone', type: 'Phone',editable: true},
               {type:"action",typeAttributes:{rowActions:actions}}
        ]);
        var action=component.get('c.fetchAccount');
        action.setCallback(this,function(response){
            var state=response.getState();
            if(state === 'SUCCESS'|| state==='DRAFT'){
                var responsevalue=response.getReturnValue();
                component.set('v.data',responsevalue);
            }
              
        });
        $A.enqueueAction(action);
	},
    selectRecord:function(component, event, helper) {
        var selectedRows=event.getParam('selectedRows');
        console.log('selectedrows',selectedRows); 
    },
    handlerowaction:function(component, event, helper) {
        var action=event.getParam('action');
        var row=event.getParam('row');
        console.log('action:',action.name);
        console.log('row:',row.Id);
        switch(action.name){
        case 'show_details' :
        alert(row.Id+''+row.Name);
                break;
                  case 'Delete' :
                var data=component.get('v.data');
                var index=data.indexOf(row);
                data.splice(index,1);
                //splice-3 params
                //1-index (add/remove)
                //no of items to add/remove
                //optional list of items that we want to add
                component.set('v.data',data);
        
        }
    },
     handleDraftValues:function(component, event, helper) {
      var draftrecords=event.getParam('draftValues');
         console.log('draftrecords:',draftrecords);
         var data=component.get('v.data');
         for(let i=0;i<draftrecords.length;i++){
             var id=draftrecords[i].id;
             alert(draftrecords[i].id+'Id ='+id.substring(4,id.length));
             console.log(data[id.substring(4,id.length)]);
         }
         
     }
})