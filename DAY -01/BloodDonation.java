import java.util.Scanner;

public class BloodDonation {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter your age: ");
        int age = scanner.nextInt();

        System.out.print("Enter your weight : ");
        int weight = scanner.nextInt();

        if (age >= 18) {
            System.out.println("You are eligible ");
        } else {
            System.out.println("You are not eligible ");
        }
        if(weight >=50){
            System.out.println("eligible for donate");
        }else {
            System.out.println("not eligible for donate");
        }
        scanner.close();
    }
}