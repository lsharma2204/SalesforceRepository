public class WrapExample {
    public StudentWrap sw		{set;get;}
    public WrapExample(){
        sw = new StudentWrap();
        sw.name = 'Lakshaya';
        sw.age = 28;
        sw.dob = Date.newInstance(1993, 04, 22);
    }
}