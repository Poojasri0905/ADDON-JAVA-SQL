class sumofCount {
    public static void main(String[] args) {
        int[] number= {1,2,3,4,5};
        int sum = 0;
        int count=0;
        System.out.println(number[2]);  
        System.out.println(number.length);  
        for(int i=0;i<=number.length-1;i++) {
        sum = sum+number[i];
        count++;
         System.out.println(number[i]);  
        }
         System.out.println("sum is:"+sum); 
    }
}