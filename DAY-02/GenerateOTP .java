import java.util.Random;
import java.util.Scanner;
class GenerateOTP {
    static int OTP(){
        Random ran = new Random();
        return 1000 + ran.nextInt(2000);
    }
    public static void main(String[] args) {
        Scanner in=new Scanner(System.in);
        long num=in.nextLong();
        long a=9636487823L;
        if(num==a){
        int otp =OTP();
        System.out.println("One time password is " +otp);
        System.out.println("verified");
        }
        else {
        System.out.println("invalid");
        }
    }
}