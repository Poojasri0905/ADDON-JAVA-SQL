import java.util.Scanner;
public class GradeEvaluation {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter your grade (A/B/C/D/F): ");
        char grade = scanner.next().toUpperCase().charAt(0);
        switch (grade) {
            case 'A':
                System.out.println("Excellent");
                break;
            case 'B':
                System.out.println("Good");
                break;
            case 'C':
                System.out.println("Average");
                break;
            case 'D':
                System.out.println("Poor");
                break;
            case 'F':
                System.out.println("Fail");
                break;
            default:
                System.out.println("Invalid grade");
                break;
        }

        scanner.close();
    }
}