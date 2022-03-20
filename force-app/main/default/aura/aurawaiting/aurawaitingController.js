({
	    toggleSpinner: function(component, event, helper) {
        var spinner = component.get("v.spinner");
            alert(spinner)
        component.set("v.spinner", (spinner ? false : true)); 
            alert(component.get("v.spinner"))
   	},
    handleUploadFinished: function (cmp, event) {
        // Get the list of uploaded files
        var uploadedFiles = event.getParam("files");
        alert("Files uploaded : " + uploadedFiles.length);

        // Get the file name
        uploadedFiles.forEach(file => console.log(file.name));
    }
})