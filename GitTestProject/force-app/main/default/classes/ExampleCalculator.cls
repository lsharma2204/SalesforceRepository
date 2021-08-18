public class ExampleCalculator {
    public Decimal aval		{set;get;}
    public Decimal bval		{set;get;}
    public Decimal result	{set;get;}
    public void sum(){
        this.result = this.aval+this.bval;
    }
    public void multiply(){
        this.result=this.aval*this.bval;
    }
    public void clear(){
        this.result=null;
        this.aval=null;
        this.bval=null;
    }
}