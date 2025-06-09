package programs;

public class singlelevel {
    void Message() {
        System.out.println("sending!!!!!");
    }
    
}
class subclass extends singlelevel{
    void View() {
        System.out.println("Received....");
    }
    
    
}
class Main{
    public static void main(String[] args){
        subclass ref=new subclass();
        ref.Message();
        ref.View();
        
        
    }
    
}