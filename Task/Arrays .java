package Task1;

public class Arrays {

		public static void main(String[] args) {
			
			int[] number = new int[5];
			
			number[0]=1;
			number[1]=2;
			number[2]=3;
			number[3]=4;
			number[4]=5;
			
			System.out.println(number[3]);
			System.out.println(number.length);
			for(int i=0; i<=number.length-1;i++) {
				System.out.println(number[i]);	
			}
			
	 
			for(int i=number.length-1;i>=0;i--) {
				System.out.println(number[i]);
			}
		}

	}
