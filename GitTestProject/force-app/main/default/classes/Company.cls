public class Company {
	public String name;
    public Product prodInfo;
    public Agent agentInfo;
    public Company(String name){
        this.name = name;
    }
    public void createProduct(String name,String code,Decimal price){
        prodInfo = new Product();
        prodInfo.name = name;
        prodInfo.code = code;
        prodInfo.price = price;
    }
    public void createAgent(String name,String city){
        agentInfo = new Agent();
        agentInfo.name = name;
        agentInfo.city = city;
    }
    public class Product{
        public String name;
        public String code;
        public decimal price;
    }
    public class Agent{
        public String name;
        public String city;
    }
}