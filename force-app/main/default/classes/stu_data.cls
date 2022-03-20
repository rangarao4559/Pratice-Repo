public class stu_data {
    public string stdName,clogName,branch;
    public integer stdAge;
    public stu_data(string name,integer age){
        stdName=name;
        stdAge=age;
        clogName='siet';
        branch='mech';
    }
    public void display(){
        system.debug('Name:'+stdName);
        system.debug('Age:'+stdAge);
        system.debug('collegeName:'+clogName);
        system.debug('Branch:'+branch);
    }

}