public class AccountValidator {
    public Account ac		{set;get;}
    public AccountValidator(){
        ac = new Account();
    }
    public PageReference saveMe(){
        PageReference p;
        List<Account> a = [Select id, name from Account where name = :ac.Name];
        System.debug('a : '+a);
        if(a.size()>0){
            ApexPages.addMessage(new Apexpages.Message(Apexpages.Severity.ERROR,'Duplicate Value Found!'));
        }else{
            insert ac;
            p = new PageReference('/'+ac.id);
        }
        
        
        return p;
    }
}