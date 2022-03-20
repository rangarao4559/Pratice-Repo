trigger contrigger on Contact (after insert,after update,after delete,after undelete) {



set<id> accids=new set<id>();
if(trigger.isinsert || trigger.isupdate || trigger.isundelete)
{
for(contact con:trigger.new){
if(con.accountid !=null){
accids.add(con.accountid);

}

}
}
if(trigger.isupdate || trigger.isdelete )
{
for(contact cd:trigger.old){
if(cd.accountid !=null){
accids.add(cd.accountid);

}

}
}
list<account> acc=new list<account>();
if(accids.size()>0){
for(account ac:[select id,Number_Of_Contatcs__c, (select id from contacts) from account where id=:accids]){
ac.Number_Of_Contatcs__c=ac.contacts.size();
acc.add(ac);
}
if(!acc.isempty()){
update acc;
}
}
}