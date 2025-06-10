public class Employees {

	public void salary(String work,double salary) {
		System.out.println("Your work is: "+work);
		System.out.println("Your salaey is: "+salary);
	}
	
	public void salary(String work,double salary,int time) {
		System.out.println("Your work is: "+work);
		
		System.out.println("Your salary is: "+(salary*time));
	}
	public void salary(String work,double salary,int time,float bonus) {
		System.out.println("Your work is: "+work);
		
		System.out.println("Your salary is: "+(salary*time*bonus));
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Employees e=new Employees();
		e.salary("Full-Time", 10000);
		e.salary("Part-Time", 1000,5);
		e.salary("FreeLancer", 1000,4,2);
	}

}