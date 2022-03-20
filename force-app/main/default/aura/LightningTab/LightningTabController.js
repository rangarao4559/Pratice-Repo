({
	handleactive : function(component, event, helper) {
		var tab=event.getSource();
        var tabid=tab.get('v.id');alert(tabid);
       switch (tabid) {
            case 'Account' :
                component.set('v.accinfo','accontinformation');
                break;
            case 'con' :
                  component.set('v.accinfo','contactinformation');
                break;
            case 'cas':
               
                break;
            case 'opp':
               
                break;
        }
	}
})