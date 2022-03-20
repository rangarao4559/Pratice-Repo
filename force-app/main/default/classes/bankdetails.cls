public class bankdetails {
    public string branch,branchcode,accountno;
    public decimal balance,amount;
    public bankdetails (string accountno){
        branch='srnagar';
        branchcode='icici001';

        balance=10000;
                this.accountno=accountno;
    }
    public void deposit(string accountno,decimal amount){
        if(accountno==accountno){
                    balance=balance+amount;
        }
    }
    public void withdraw(string accountno,decimal amount){
         if(accountno==accountno){
                    balance=balance-amount;
        }
        }
    public void show (){
        system.debug('Branch:'+branch);
       system.debug('Branchcode:'+branchcode);
        system.debug('Accountno:'+accountno);
        system.debug('BALANCE:'+balance);
    }
    
}