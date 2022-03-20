({
	RemoveRecord : function(component, event, helper) {
		var index=event.currentTarget.id;
        var existingRecords=component.get('v.contactRecords');
        existingRecords.splice(index , 1); 
        component.set('v.contactRecords',existingRecords);
	},
    editRecord : function(component, event, helper) {
        	var index=event.currentTarget.id;
        var existingRecords=component.get('v.contactRecords');
    var selectedRecords=existingRecords[index];
        console.log('selectedrecord',selectedRecords);
        var selRecordEvent=component.getEvent('SelectRecordEvent');
        selRecordEvent.setParams({
            contact:selectedRecords
        });
        selRecordEvent.fire();
        
    }
})