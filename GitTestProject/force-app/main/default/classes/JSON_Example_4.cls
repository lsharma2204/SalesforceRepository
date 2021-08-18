public class JSON_Example_4 {
    public String jsonString	{set;get;}
    public Map<String,Object> resMap {set;get;}
    public JSON_Example_4(){
        resMap = new Map<String,Object>();
        jsonString = '{"status":"Success","code":200,"students":[{"name":"Lakshaya","age":28},{"name":"Rajiv","age":29}]}';
        System.debug('Json String : '+jsonString);
        
        System.JSONParser jp = JSON.createParser(jsonString);
        while(jp.nextToken()!=null){
            if(jp.getText() == 'status'){
                jp.nextToken();
                System.debug('Status : '+jp.getText());
            }
            if(jp.getText() == 'students'){
                jp.nextToken();
                List<Student> std = (List<Student>)jp.readValueAs(List<Student>.class);
                for(Student s : std){
                    System.debug('Student Name : '+s.name);
                    System.debug('Student Age : '+s.age);
                }
            }
        }
    }
}