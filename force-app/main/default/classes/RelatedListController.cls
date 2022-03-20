public class RelatedListController {  
      
    @AuraEnabled  
    public static RelatedListResult fetchRecs( String recId, String sObjName, String parentFldNam, String strCriteria ) {  
          
        String strTitle = ' (';           
        List < sObject > listsObjects = new List < sObject >();  
        RelatedListResult obj = new RelatedListResult();  
        String strSOQL = 'SELECT Id,Name,Email FROM ' + sObjName + ' WHERE ' + parentFldNam + ' = \'' + recid + '\'';  
        if ( String.isNotBlank( strCriteria ) )  
            strSOQL += ' ' + strCriteria;  
        strSOQL += ' LIMIT 4';  
        listsObjects = Database.query( strSOQL );    
        Integer intCount = listsObjects.size();  
        if ( intCount > 3 ) {  
              
            List < sObject > tempListsObjects = new List < sObject >();  
            for ( Integer i = 0; i <3; i++ )  
                tempListsObjects.add( listsObjects.get( i ) );  
              
            obj.listsObject = tempListsObjects;  
            strTitle += '3+';  
              
        } else {  
              
            obj.listsObject = listsObjects;  
            strTitle += String.valueOf( intCount );  
              
        }  
        strTitle += ')';        
        obj.strTitle = strTitle;  
        return obj;  
          
    }  
      
    public class RelatedListResult {  
          
        @AuraEnabled  
        public String strTitle;  
        @AuraEnabled  
        public List < sObject > listsObject;  
          
    }  
  
}