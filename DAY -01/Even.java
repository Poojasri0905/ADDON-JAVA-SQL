import java.util.*;
    public class Even {
    public static void main(String[] args) {
        System.out.println("Enter the starting value:");
        Scanner in=new Scanner(System.in);
        int a=in.nextInt();
        System.out.println("Enter the ending value:");
        int b=in.nextInt();
        for (int i =a; i<=b; i++) {
            if (i % 2 == 0) {
                System.out.println(i);
            }
        }
    }
}