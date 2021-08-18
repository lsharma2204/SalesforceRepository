public class JSON_Example_Apex_Count {
    public String searchtext		{set;get;}
    public String result 			{set;get;}
    public Integer count			{set;get;}
    public JSON_Example_Apex_Count(){
        this.count = 0;
    }
    public void search(){
        System.JSONGenerator js = JSON.createGenerator(true);
        js.writeStartObject();
        
            List<Account> acc = [select name,industry from Account where name = :searchtext];
            
           
            
            if(acc.size()>0){
                 String accString = JSON.serialize(acc);
                js.writeStringField('status', 'Success');
                js.writeNumberField('count',acc.size());
                js.writeStringField('accounts',accString);
            }else{
                js.writeStringField('status','Failed');
            	js.writeNumberField('count', 0);
            }
            
       
        js.writeEndObject();
        result = js.getAsString();
    }
}