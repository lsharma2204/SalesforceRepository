public class Wrapper_Example_1 {
    public Student std	{set;get;}
    public Wrapper_Example_1(){
        std = new Student();
        std.age = 35;
        std.name = 'Satish';
        std.phone = '0130-12333';
    }
}