trigger delete_loan on loan__c (before delete) {
list<id>loanid=new list<id>();
for(loan__c l:trigger.old){
if(l.loan_type__c=='education'){
loanid.add(l.id);
}
} 
system.debug(loanid);
list<force__c>forces=[select id from force__c where loan__c in:loanid];
system.debug('FORCES:'+forces); 
delete forces;
}