public class Apex_InterestCalculator {
    public Decimal amount	{set;get;}
    public Integer year 	{set;get;}
    public Decimal rate		{set;get;}
    public Decimal interest {set;get;}
    
    public void calculate(){
        this.interest = (this.amount*this.rate*this.year)/100;
    }
    
    public void reset(){
        
        this.amount = null;
        this.year = null;
        this.rate = null;
        this.interest = null;
    }
}