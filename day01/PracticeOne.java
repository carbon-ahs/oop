package day01;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner; 

public class PracticeOne {
    public static void main(String[] args) {
        List<String> names = new ArrayList<>(); 
        List<String> outputNames = new ArrayList<>();

        // Add names
        names.add("Tareq");
        names.add("Afsana");
        names.add("Imtiaz");
        names.add("Pulok");
        names.add("Robin");
        names.add("Samia");
        names.add("Rupok");

        // Input setup
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter substring to search for: ");
        
        // Convert the input search string to lowercase immediately for case-insensitive search
        String checkString = scanner.nextLine().toLowerCase(); 
        
        // Loop through the 'names' list
        for (int i = 0; i < names.size(); i++) { 
            
           
            String currentName = names.get(i); 
            
            if (currentName.toLowerCase().contains(checkString)) { 
                outputNames.add(currentName);
            }
        }
        
        // Close the scanner
        scanner.close();

        // Print the final list of matched names
        System.out.println("Matching Names: " + outputNames);
    }
}