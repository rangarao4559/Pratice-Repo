public class opportunity_handler {
    public static void afterinsert(list<opportunity>optylist){
        list<opportunityshare>share=new list<opportunityshare>();
        for(opportunity op:optylist){
            if(op.stagename=='closedwon'){
                opportunityshare os=new opportunityshare();
                os.opportunityid=op.id;
                os.userorgroupid=op.Manager__c;
                os.opportunityAccesslevel='read';
                 os.RowCause='Manual';
                share.add(os);
            }
        }
    
        insert share;
    }


}
/*
public class Opportunity_Handler {
  //When ever new Opportuity is Created with statename as closed won share the record with Manager 
    public static void afterInsert(List<Opportunity> optyList){
        List<OpportunityShare> share =new List<OpportunityShare>();
        for(Opportunity op:optyList){
            if(op.stageName=='Closed Won'){
                OpportunityShare os =new OpportunityShare();
                os.OpportunityId=op.Id;
                os.UserOrGroupId=op.Manager__c;
                os.OpportunityAccessLevel='Read';
                os.RowCause='Manual';
                share.add(os);
            }
        }
    
        insert share;
    }
    }*/