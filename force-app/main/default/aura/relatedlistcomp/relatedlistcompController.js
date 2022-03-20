({  
      
    fetchRecords : function(component, event, helper) {  
           component.set('v.columns', [
           
        
            {label: 'Close date', fieldName: 'Name', type: 'text'}
      
          
        ]);
     
        var temObjName = component.get( "v.sobjectName" );  
       component.set( "v.ObjectName", temObjName.replace( "__c", "" ).replace( "_", " " ) ); 
      
        var action = component.get( "c.fetchRecs" );  
        action.setParams({  
            recId: component.get( "v.recordId" ),  
            sObjName: temObjName,  
            parentFldNam: component.get( "v.parentFieldName" ),  
            strCriteria: component.get( "v.criteria" )  
        });  
        action.setCallback(this, function(response) {  
            var state = response.getState();  
            if ( state === "SUCCESS" ) {  
                  
                var tempTitle = component.get( "v.title" );  
                component.set( "v.listRecords", response.getReturnValue().listsObject ); 
                alert('yu'+ response.getReturnValue().listsObject)
                
                alert('iop'+JSON.stringify(response.getReturnValue().listsObject));
                component.set( "v.title", tempTitle + response.getReturnValue().strTitle );  
                  
            }  
        });  
        $A.enqueueAction(action);  
          
    },  
      
    viewRelatedList: function (component, event, helper) {  
          
        var navEvt = $A.get("e.force:navigateToRelatedList");  
        navEvt.setParams({  
            "relatedListId": component.get( "v.childRelName" ),  
            "parentRecordId": component.get( "v.recordId" )  
        });  
        navEvt.fire();  
    },  
      
    viewRecord: function (component, event, helper) {  
          
        var navEvt = $A.get("e.force:navigateToSObject");  
        var recId = event.getSource().get( "v.value" )  
        navEvt.setParams({  
            "recordId": recId  
        });  
        navEvt.fire();  
          
    }  
      
})