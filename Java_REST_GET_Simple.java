import java.util.*; 
import java.io.*;
import java.net.*;

class Main {  
  public static void main (String[] args) { 
    System.setProperty("http.agent", "Chrome");
    try { 
      // Url definition
      URL url = new URL("https://coderbyte.com/api/challenges/json/rest-get-simple");
      try {
        //For HTTPClient Java Library we should handle the connection with below code
        URLConnection connection = url.openConnection();
        InputStream response = connection.getInputStream();

        //Just code to valide the responde code
        //System.out.println("Test " + response);

        //Code to handle the response 
        try(Scanner scanner = new Scanner(response)){
          String responsebody = scanner.useDelimiter(", ").next();
          //System.out.println(responsebody);

          //A substring funtion to get the exacly part we need to print
          String newString2 = responsebody.substring(responsebody.indexOf("[")+ 1, responsebody.indexOf("}")-1);
          //System.out.println(newString2);

          // A simple String customization to clenan the double quotes
          String result = newString2.replace("\"", "");
          //System.out.println(result);

          // A simple String customization to print the output as expected for words separated by ", "
          String finalResult = result.replace(",", ", ");
          System.out.println(finalResult);
       
        }

        
        //Some blocks to handle exceptions in case of any issue with Scanner Class
      } catch (IOException ioEx) {
        System.out.println(ioEx);
      }

      //Some blocks to handle exceptions in case of any issue withing the try/catch block
    } catch (MalformedURLException malEx) {
      System.out.println(malEx);
    }
  }   
}

