package inheritance;
public class Shoppingcart {
    void add_to_cart(String category , int price){
        System.out.println("your category:"+category);
    System.out.println("Item Price::"+price);
    
}
void add_to_cart(String category , int price , int quantity){
int total = price * quantity;
    System.out.println("total price :"+total);
    }
    public static void main(String[] args) {
        Shoppingcart in=new Shoppingcart();
        in.add_to_cart("shirt",250);
        in.add_to_cart("shirt",250,2);
    }
    }
    