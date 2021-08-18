public class AccountSelectController {
    public List<WrapAccount> wrapAccountList	{set;get;}
    public List<WrapAccount> wrap				{set;get;}
    public AccountSelectController(){
        if(wrapAccountList == null){
            wrapAccountList = new List<WrapAccount>();
            wrap = new List<WrapAccount>();
            List<Account> acc = [Select id,name,billingstate,phone,industry from Account LIMIT 10];
            for(Account a : acc){
                wrapAccountList.add(new WrapAccount(a));
            }
        }
    }
    public void submit(){
        for(WrapAccount w : wrapAccountList){
            if(w.selected == true){
                wrap.add(w);
            }
        }
    }
    public class WrapAccount{
        public Account acc	{set;get;}
        public Boolean selected	{set;get;}
        
        public WrapAccount(Account a){
            acc = a;
            selected = false;
        }
    }
}