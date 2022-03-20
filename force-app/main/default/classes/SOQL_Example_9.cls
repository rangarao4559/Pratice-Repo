public class SOQL_Example_9 {
    public String name 					{set;get;}
    public String stageName 			{set;get;}
    public String query					{set;get;}
    public List<Opportunity> optyList 	{set;get;}
    public void search(){
        query='select id,Name,StageName,CloseDate,Amount,Type from Opportunity';
        if(name!='' && stageName!=''){
            query=query+' where name=\''+name+'\' and stageName=\''+stageName+'\''; 			
        }else{
            if(name!=''){
            	query=query+' where name=\''+name+'\'';
            }
            if(stageName!=''){
                query=query+' where stageName=\''+stageName+'\'';
            }   
        }
        optyList =Database.query(query);
    }
}