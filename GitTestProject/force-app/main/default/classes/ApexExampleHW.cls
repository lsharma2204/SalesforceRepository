public class ApexExampleHW {
    public String selectVal		{set;get;}
    public Boolean flag			{set;get;}
    public Boolean flag1		{set;get;}
    public Account acc			{set;get;}
    public Contact con			{set;get;}
    public ApexExampleHW(){
        this.flag= false;
        this.flag1=false;
        acc = new Account();
        con = new Contact();
    }
    public void renderMe(){
        if(this.selectVal == 'acc'){
            this.flag=true;
        }
        if(this.selectVal == 'con'){
            this.flag1=true;
        }
    }
    
}