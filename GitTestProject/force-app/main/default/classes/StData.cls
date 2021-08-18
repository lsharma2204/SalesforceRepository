public class StData {
	public List<StWrap> sw;
    public StData(){
        
        StWrap s1 = new StWrap();
        s1.name = 'Lakshaya';
        s1.age = 29;
        
        StWrap s2 = new StWrap();
        s2.name = 'Rohan';
        s2.age = 30;
        sw = new List<StWrap>{s1,s2};
        
    }
    
    public class StWrap{
        public String name;
        public Integer age;
    }
}