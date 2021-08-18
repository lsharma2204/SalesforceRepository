public class WrapperExample2 {
    public CompanyData cd		{set;get;}
    public WrapperExample2(){
        cd = new CompanyData();
    }
    public void create(){
        Account acc = new Account();
        acc.Name = cd.name;
        acc.Phone = cd.phone;
        acc.Industry = cd.industry;
        acc.Rating = cd.rating;
        
        insert acc;
        
        Contact con = new Contact();
        con.AccountID = acc.Id;
        con.LastName = cd.lastname;
        con.FirstName = cd.firstname;
        con.Email = cd.email;
        insert con;
        
        Apexpages.addMessage(new Apexpages.Message(Apexpages.Severity.CONFIRM,'Record Successfully Created'));
    }
}