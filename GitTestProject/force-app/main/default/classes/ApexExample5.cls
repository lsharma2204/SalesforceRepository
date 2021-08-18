public class ApexExample5 {
    public Account acc		{set;get;}
    public ApexExample5(){
        acc = new Account();
    }
    public PageReference create(){
        PageReference p;
        ApexPages.Message msg;
        Account ac = new Account();
        ac.Name = acc.Name;
        ac.Phone = acc.Phone;
        ac.Industry = acc.industry;
        try{
            insert ac;
            p = new PageReference('/'+ac.id);
        }catch(Exception e){
            msg = new Apexpages.Message(Apexpages.Severity.ERROR,''+e.getMessage());
            Apexpages.addMessage(msg);
        }
        
        return p;
    }
}