public class CalculatorClass {
    public Integer valA		{set;get;}
    public Integer valB		{set;get;}
    public Integer res		{set;get;}
    
    public void sum(){
        Integer sum = 0;
        sum = this.valA+this.valB;
        this.res = sum;
    }
    public void mul(){
        Integer mul = 1;
        mul = this.valA*this.valB;
        this.res = mul;
    }
    public void reset(){
        this.valA = null;
        this.valB = null;
        this.res  = null;
    }

}