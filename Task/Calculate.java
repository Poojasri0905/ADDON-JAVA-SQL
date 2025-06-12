import java.util.Scanner;
public class Calculate {
	public static void main(String[] args) {
		Scanner in=new Scanner(System.in);
		try {
			System.out.println("Enter the Number  :");
			int a=in.nextInt();
			int b=in.nextInt();
			int c=in.nextInt();
			int total=a+b+c;
			
			double avg=total/3.0;
			System.out.println("Total number  :"+total);
			System.out.println("Average :"+avg);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("wrong"+e);
		} finally {
			System.out.println("the'try'is finished.......!");
		}
	
	}

}