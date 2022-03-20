({
	add : function(component, event, helper) {
        var aval=component.find("ava").get("v.value");
        var bval=component.find("bva").get("v.value");
        var cval=parseInt(aval)+parseInt(bval);
        var cval=component.find("cva").set("v.value",cval);
 
	},
    cancel:function(component, event, helper) {
        component.find("ava").set("v.value",'');
        component.find("bva").set("v.value",'');
        component.find("cva").set("v.value",'');
    },
   mult : function(component, event, helper) {
      var aval=component.find("ava").get("v.value");
      var bval =component.find("bva").get("v.value");
     var cval=(aval)*(bval);
       component.find("cva").set("v.value",cval);
        
   }
})