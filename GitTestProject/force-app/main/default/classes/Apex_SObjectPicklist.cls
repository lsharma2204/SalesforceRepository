public class Apex_SObjectPicklist {
    public String selected 		{set;get;}
    public Boolean flag1		{set;get;}
    public Boolean flag2		{set;get;}
    public String name			{set;get;}
    public String phone			{set;get;}    
    public String industry		{set;get;}
    public String lname			{set;get;}    
    public String fname			{set;get;}    
    public String email			{set;get;}
        
    public Apex_SObjectPicklist(){
        this.flag1 = false;
        this.flag2 = false;
    }
    
    public void selectedPicklist(){
        if(this.selected == 'none'){
            this.flag1 = false;
            this.flag2 = false;
        }
        else if(this.selected == 'account'){
            this.flag1 = true;
            this.flag2 = false;
        }
        else if(this.selected == 'contact'){
            this.flag1 = false;
            this.flag2 = true;
        }
    }
}