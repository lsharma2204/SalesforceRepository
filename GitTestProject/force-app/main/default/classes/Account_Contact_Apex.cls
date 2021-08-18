public class Account_Contact_Apex {
    public String name		{set;get;}
    public String phone		{set;get;}
    public String industry		{set;get;}
    public String lastName		{set;get;}
    public String firstName		{set;get;}
    public String email		{set;get;}
    
    
    public PageReference createAccount(){
        PageReference p;
        
        Account acc = new Account();
        acc.Name = name;
        acc.Phone = phone;
        acc.Industry = industry;
        
        try{
            insert acc;
           createContact(acc.Id);
            p = new PageReference('/'+acc.Id);
            
        }
        catch(Exception e){
            ApexPages.Message msg = new ApexPages.Message(ApexPages.Severity.ERROR,e.getMessage());
        	ApexPages.addMessage(msg);
        }
        return p;
            
    }
    public void createContact(ID a){
        PageReference p;
        Contact c = new Contact();
        c.LastName = lastName;
        c.FirstName = firstName;
        c.Email = email;
        c.AccountId = a;
        
        try{
            insert c;
       
        }
        catch(Exception e){
            ApexPages.Message msg = new ApexPages.Message(ApexPages.Severity.ERROR,e.getMessage());
        	ApexPages.addMessage(msg);
        }
        
    }
}