public class AccountCollector {
    public List<Account> ac		{set;get;}
    public Account a			{set;get;}
    public AccountCollector(){
        ac = new List<Account>();
        a = new Account();
    }
    public void saveMe(){
        ac.add(a);
        a.Name = '';
        
        System.debug(ac);
        a= new Account();
    }
}