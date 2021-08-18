public class SOQL_Example_2 {
    public List<Account> acc	{set;get;}
    public Integer count		{set;get;}
    public Boolean flag			{set;get;}
    
    public SOQL_Example_2(){
        this.flag = false;
       this.count = null;
    }    
    public void allData(){
        flagValue();
        acc = [Select Name, Phone, Industry, Rating from Account];
    }
    public void limitData(){
        
        acc = [Select Name, Phone, Industry, Rating from Account limit 5];
    }
    public void setLimit(){
        
        if(count == null){
            acc = [Select Name,Phone,Industry,Rating from Account limit 2];
        }else{
            acc = [Select Name,Phone,Industry,Rating from Account limit :count];
        }
        
    }
    public void setOffset()
    {
        acc = [Select Name, Phone, Industry , Rating from Account limit 5 offset 5];
    }
    public void nameAsc(){
        acc = [Select Name, Phone, Industry, Rating from Account Order by Name ];
    }
    public void nameDesc(){
        acc = [Select Name,Phone,Industry, Rating from Account Order by Name Desc];
    }
    public void flagValue(){
        flag = true;
    }
}