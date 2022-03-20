public class flow_demo implements process.Plugin {
    public process.PluginResult invoke(process.PluginRequest request){
        map<string,object>inputs=request.inputparameters;
        decimal exp=(decimal)inputs.get('exp');
        decimal age=(Decimal)inputs.get('age');
        decimal salary,bonus;
        if(age>30 && exp>5){
            salary=50000;
            bonus=5000; 
        }else{
            salary=30000;
            bonus=3000;
        }
        map<string,object>outputs=new map<string,object>();
        outputs.put('salary',salary);
        outputs.put('bonus',bonus);
        process.PluginResult result=new process.PluginResult(outputs);
        return result;
    }
    public process.PluginDescribeResult Describe(){
        process.PluginDescribeResult.inputParameter ip1=new process.PluginDescribeResult.inputParameter('age',process.PluginDescribeResult.parametertype.decimal,true);
                process.PluginDescribeResult.inputParameter ip2=new process.PluginDescribeResult.inputParameter('exp',process.PluginDescribeResult.parametertype.decimal,true);
        list<process.PluginDescribeResult.inputParameter>inputs=new list<process.PluginDescribeResult.inputParameter>{ip1,ip2};
        process.PluginDescribeResult.outputParameter op1=new process.PluginDescribeResult.outputParameter('salary',process.PluginDescribeResult.parametertype.Decimal);
        process.PluginDescribeResult.outputParameter op2=new process.PluginDescribeResult.outputParameter('bonus',process.PluginDescribeResult.parametertype.Decimal);
        list<process.PluginDescribeResult.outputParameter>outputs=new list<process.PluginDescribeResult.outputParameter>{op1,op2};
        
        process.PlugindescribeResult result=new process.PlugindescribeResult();
        result.inputparameters =inputs;
        result.outputparameters=outputs;
        return result;
        
    }
    
 
}/*public class Plugin_Example implements Process.Plugin {
    public Process.PluginResult invoke(Process.PluginRequest request){
        // Fetch all the inputs from the flows 
        Map<String,Object> inputs =request.inputparameters;
        // Read the exp value 
        Decimal exp =(Decimal)inputs.get('exp');
        // read the age value 
        Decimal age =(Decimal)inputs.get('age');
        Decimal salary,bonus;
        if(age>30 && exp >5 ){
            salary=50000;
            bonus=5000;
        }else{
            salary=30000;
            bonus=3000;
        }
        Map<String,Object> outputs =new Map<String,Object>();
        outputs.put('Salary',salary);
        outputs.put('bonus',bonus);
        Process.PluginResult result =new Process.PluginResult(outputs);
        return result;
    }
    public Process.PluginDescribeResult describe(){
        // This will given the description about the inputparameter and outputparameter 
        Process.PluginDescribeResult.Inputparameter ip1 =new Process.PluginDescribeResult.Inputparameter('age',Process.PluginDescribeResult.ParameterType.Decimal,true);
        Process.PluginDescribeResult.Inputparameter ip2 =new Process.PluginDescribeResult.Inputparameter('exp',Process.PluginDescribeResult.ParameterType.Decimal,true);
        List<Process.PluginDescribeResult.Inputparameter> inputs =new List<Process.PluginDescribeResult.inputParameter>{ip1,ip2};
        Process.PluginDescribeResult.Outputparameter op1 =new Process.PluginDescribeResult.Outputparameter('Salary',Process.PluginDescribeResult.ParameterType.Decimal);
        Process.PluginDescribeResult.Outputparameter op2 =new Process.PluginDescribeResult.Outputparameter('Bonus',Process.PlugiNDescribeResult.ParameterType.Decimal);
        List<Process.PluginDescribeResult.Outputparameter> outputs =new List<Process.PluginDescribeResult.Outputparameter>{op1,op2};
        Process.PluginDescribeResult result =new Process.PluginDescribeResult();
        result.inputparameters =inputs;
        result.outputparameters=outputs;
        return result;
    }
    
}*/