({
	dohandle : function(component, event, helper) {
		var params=event.getParam('arguments');
        if(params){
            var param1=params.test;
             var param2=params.test2;
            alert(param1);
            alert(param2);
     
        }
	}
})