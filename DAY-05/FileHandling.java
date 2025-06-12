import java.io.*;
class FileHandling {
    public static void main(String[] args) {
        String filename="textfilename/path";
        try(BufferedReader br=new BufferedReader(new FileReader(filename))){
            String Line;
            if((Line=br.readLine()) !=null) {
            System.out.println(Line);    
            }
        }
        catch(Exception e) {
            System.out.println("FileNotfound");
        }
    }