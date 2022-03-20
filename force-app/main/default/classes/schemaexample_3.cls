public class schemaexample_3 {
    public list<string>options {set;get;}
    public schemaexample_3(){
        options=new list<string>();
        schema.DescribeFieldResult result=Account.Industry.getDescribe();
        if(result.getType()==schema.DisplayType.PICKLIST){
            list<schema.PicklistEntry>entries=result.getpicklistvalues();
            for(schema.PicklistEntry e:entries){
                options.add(e.getlabel());
                }
        }
    }

}
/*public class Schema_Example_3 {
    public List<String> options {set;get;}
    public Schema_Example_3(){
        options =new List<String>();
        // Get the description of the field industry
        Schema.DescribeFieldResult result=Account.Industry.getDescribe();
        // Check the datatype of the field Industry 
        // If the dataType is picklist get the picklist options
        if(result.getType() == Schema.DisplayType.PICKLIST){
            // Get the options in the picklist field
            List<Schema.PicklistEntry> entries =result.getPickListvalues();
            for(Schema.PickListEntry e:entries){
                options.add(e.getLabel());
            }
        }
    }
}*/