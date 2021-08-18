public class Apex_Example4 {
    public String name 		{set;get;}
    public String phone		{set;get;}
    public String industry	{set;get;}
    public String rating	{set;get;}
    
    public void createAccount(){
        Account acc = new Account();
        acc.Name = this.name;
        acc.Phone = this.phone;
        acc.Industry = this.industry;
        acc.Rating = this.rating;
        try{
            
            insert acc;
           	ApexPages.Message msg = new ApexPages.Message(ApexPages.Severity.CONFIRM,'Record Successfully inserted '+acc.Id); 
            ApexPages.addMessage(msg);
        }
        catch(Exception e){
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR,e.getMessage()));
        }
        
    }
}