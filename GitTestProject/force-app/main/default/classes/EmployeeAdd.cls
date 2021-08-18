public class EmployeeAdd {
	public String name;
    public Decimal sal;
    public Address add;
    public EmployeeAdd(String name, Decimal sal, String city, String state, String code){
        add = new Address();
        this.name = name;
        this.sal = sal;
        add.city = city;
        add.state = state;
        add.code = code;
    }
}