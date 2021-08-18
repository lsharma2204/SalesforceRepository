public class JSON_Exmple_3 {
    public Map<String,Object> resMap		{set;get;}
    public String jsonString				{set;get;}
    public JSON_Exmple_3(){
        jsonString = '{"LastName":"Myla","FirstName":"Satish","Account":{"name":"Wipro","industry":"IT"},"Salary":10000}';
    	resMap = new Map<String,Object>();
        System.JSONParser jp = JSON.createParser(jsonString);
        while(jp.nextToken() != null){
            if(jp.getText() == 'FirstName'){
                jp.nextToken();
                System.debug('FirstName : '+jp.getText());
            }
            if(jp.getText() == 'Account'){
                jp.nextToken();
                Account acc = (Account)jp.readValueAs(Account.class);
                System.debug('Account : '+acc);
                System.debug('Account Name : '+acc.name);
            }
            if(jp.getText() == 'Salary'){
                jp.nextToken();
                System.debug('Salary : '+jp.getIntegerValue());
            }
        }
    }
    
    
}