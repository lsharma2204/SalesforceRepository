public class JSON_Example_1 {
    public void create(String name,String industry,String phone){
        System.JSONGenerator js = JSON.createGenerator(true);
        js.writeStartObject();
        try{
            Account acc = new Account();
            acc.Name = name;
            acc.Industry = industry;
            acc.Phone = phone;
            insert acc;
            
            
            js.writeStringField('Status','Success');
            js.writeStringField('StatusCode', '200');
            js.writeIdField('ID',acc.Id);
        }catch(Exception e){
            js.writeStringField('Status','Failed');
            js.writeStringField('StatusCode',e.getTypeName());
            js.writeStringField('Error', e.getMessage());
        }
        js.writeEndObject();
        String result = js.getAsString();
        System.debug(result);
    }
}