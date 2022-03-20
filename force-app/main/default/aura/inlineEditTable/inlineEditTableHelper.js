({
    requiredValidation : function(component,event) {
        // get all accounts.. 	
        var allRecords = component.get("v.ContactList");
        var isValid = true;
        // play a for loop on all account list and check that account name is not null,   
        for(var i = 0; i < allRecords.length;i++){
            console.log(allRecords[i]);
            if(allRecords[i]!= undefined && (allRecords[i].LastName == null || allRecords[i].LastName.trim() == '')){
                alert('Complete this field : Row No ' + (i+1) + ' LastName is null' );
                isValid = false;
            }  
        }
        return isValid;
    },
})