public virtual class employee {
    public string name;
    public decimal salary,exp;
    public  employee(){
        salary=0;
        exp=6;
        name='raju';

    }
    public virtual void display(){
        system.debug('NAME:'+name);
        system.debug('SALARY:'+salary);
        system.debug('EXP:'+exp);
    }

}