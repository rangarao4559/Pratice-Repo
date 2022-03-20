public class myExtension {

    public Opportunity currentRecord {set;get;}
    
    public myExtension(ApexPages.StandardController controller) {
        currentRecord = [SELECT Id, Name, Amount FROM Opportunity WHERE Id = :ApexPages.currentPage().getParameters().get('id')];
    }

    public Opportunity getcurrentRecord(){
        return currentRecord;
    }
}