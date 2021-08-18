public class Apex_Example5_Contact {
    public String lastName		{set;get;}
    public String firstName		{set;get;}
    public String phone			{set;get;}
    public String email			{set;get;}
    
    public void createContact(){
        Contact c = new Contact();
        c.LastName = this.lastName;
        c.FirstName = this.firstName;
        c.Phone = this.phone;
        c.Email = this.email;
        
        try{
            insert c;
            reset(c.id);
        }catch(Exception e){
            ApexPages.Message msg = new ApexPages.Message(ApexPages.Severity.ERROR,e.getMessage());
            ApexPages.addMessage(msg);
          
        }
        
    }
    public void reset(Id a){
        this.lastName = '';
        this.firstName = '';
        this.phone = '';
        this.email = '';
        ApexPages.Message msg = new ApexPages.Message(ApexPages.Severity.CONFIRM,'Record Inserted Successfully '+a);
            ApexPages.addMessage(msg);
    }
}