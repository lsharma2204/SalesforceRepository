public class JSON_Example_2 {
    public String jsonString		{set;get;}
    public Map<String,Object> resMap	{set;get;}
    public JSON_Example_2(){
        resMap = new Map<String,Object>();
        jsonString = '{"name":"Satish","marks":[10,20,30],"city":"Hyd"}';
        System.JSONParser jp = JSON.createParser(jsonString);
        While(jp.nextToken() != null){
            resMap.put(jp.getText(), jp.getCurrentToken());
        }
    }
}