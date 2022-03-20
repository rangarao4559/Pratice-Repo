({
showme : function(component, event, helper) {
		alert(component.isValid());
    alert(component.getName());
    alert(component.get('v.age'));
    component.set('v.age',56);
    var agenumber=component.find('test');
    alert(agenumber.get('v.value'));
agenumber.set('v.value',556);
	},
    
    add : function(component, event, helper) {
        var number1=component.get('v.input1');
     var number2=component.get('v.input2');
        alert(parseInt(number1)+parseInt(number2));
    },
     sub : function(component, event, helper) {
        var number1=component.get('v.input1');
     var number2=component.get('v.input2');
      alert(parseInt(number1)-parseInt(number2));
              },
     multi : function(component, event, helper) {
        var number1=component.get('v.input1');
     var number2=component.get('v.input2');
         component.set('v.output',parseInt(number1)*parseInt(number2));
     },
      div : function(component, event, helper) {
        var number1=component.find('input11');
     var number2=component.find('input22');
    component.set('v.output',parseInt(number1.get('v.value'))/parseInt(number2.get('v.value')));
     },
    domap : function(component, event, helper) {
        var map=[];
        for(var i=0;i<10;i++){
            map.push({
                key:i,
                value:'test'+i
            });
        }
         component.set('v.maping',map) ;
    },
    doInit : function(component, event, helper) {
        var key = component.get("v.key");
        var map = component.get("v.map");
  
      
        component.set("v.value" , map[key]);
	}
    })