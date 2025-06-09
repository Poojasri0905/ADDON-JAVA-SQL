import java.util.*;
class Atm{
    public static void main(String[] args){
        Scanner ref=new Scanner(System.in);
        System.out.println("enter pin");
        int pin=ref.nextInt();
        if(pin==1234){
            System.out.println("enter amount");
        int amount=ref.nextInt();
             if(amount<= 5000)    {
        
        System.out.println("withdrawn successfully");
        }
        else{
            System.out.println("insufficient  amount");
            
        }
        
    } 
        else{
            System.out.println("invalid ");
        }
    
    }
}
    