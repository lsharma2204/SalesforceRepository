global class NCred {
    global static void nCredData(){
        
       HttpRequest req = new HttpRequest();
	req.setEndpoint('callout:Org/services/data/v32.0');
	req.setMethod('GET');
	Http http = new Http();
	HTTPResponse res = http.send(req);
       
System.debug(res.getStatusCode());        
System.debug(res.getBody());
    }
}