public class ApexExample4 {
    public String name		{set;get;}
    public String phone		{set;get;}
    public String rating	{set;get;}
    public String industry	{set;get;}
    public void create(){
        Account acc = new Account();
        acc.Name = this.name;
        acc.Phone = this.phone;
        acc.Rating = this.rating;
        acc.Industry = this.industry;
        insert acc;
        Apexpages.Message msg = new Apexpages.Message(Apexpages.Severity.CONFIRM,'Record Created Successfully');
        Apexpages.addMessage(msg);
    }
}