import java.io.FileWriter;
import java.io.IOException;
public class WriteToFile{
    public static void main(String[] args) {
        String filename="";
        try(BufferedWriter br=new BufferedWriter(new FileWriter(filename))){
        String = mywriter;
         if((mywriter = br.newLine()) !=null){
                 
             System.out.println("Successfully write to the file");
            }
            }catch(Exception e){
             System.out.println("Filenotfound");
    }}
}