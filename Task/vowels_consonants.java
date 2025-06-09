package Task2;
import java.util.Scanner;

public class vowels_consonants {

	public static void main(String[] args) {
		 
		 Scanner in = new Scanner(System.in);
		 System.out.println("Enter the String : ");
		  String word="welcome to Addon";
		 String input = in.next();
		  
		  int vowel=0,consonant=0;
		  for (int i = 0; i < input.length(); i++) {
		   char ch=input.charAt(i);
		     
		   if (Character.isLetter(ch)) {
		    
		    if (ch=='a'||ch=='e'||ch=='i'||ch=='o'||ch=='u') {
		     vowel++;
		    }else {
		    
		     consonant++;
		    } 
		   }   
		  }  
		  System.out.println("vowel :"+vowel);
		  System.out.println("consonant :"+consonant);
		  
		 }

	}