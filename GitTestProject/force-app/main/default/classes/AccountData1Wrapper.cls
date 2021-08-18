public class AccountData1Wrapper {
    public List<AccountData1> accList		{set;get;}
    public AccountData1Wrapper(){
        accList = new List<AccountData1>();
        List<Account> ac = [Select id,name,phone,rating from Account];
        for(Account a : ac){
            AccountData1 ad = new AccountData1();
            ad.acc = a;
            ad.flag = false;
        }
    }
    
}