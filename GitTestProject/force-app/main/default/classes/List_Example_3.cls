public class List_Example_3 {
    public Account ac		{set;get;}
    public List_Example_3(){
        ac = new Account();
    }
    public PageReference saveMe(){
        PageReference p;
        List<Account> accs = [Select Name from Account where Name=:ac.name];
        
        if(accs.size()>0){
            ApexPages.Message msg = new ApexPages.Message(ApexPages.Severity.ERROR,'Duplicate Record Found !');
            ApexPages.addMessage(msg);
        }else{
            try{
                insert ac;
                p = new PageReference('/'+ac.id);
            }catch(Exception e){
                ApexPages.Message msg = new ApexPages.Message(ApexPages.Severity.ERROR,e.getMessage());
            }
        }
        return p;
    }
}