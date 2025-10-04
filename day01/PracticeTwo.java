package day01;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class PracticeTwo {
    private static final String CSV_FILE = "day01\\salarysheet.csv";
    private static final String DELIMITER = ",";

    public static void main(String[] args) {
        List<Salary> salaryRecords = new ArrayList<>();
        String line;
        salaryRecords = loadSalaryRecordsFromCSV(CSV_FILE);

        System.out.println("--- Successfully Loaded Records ---");
        for (Salary salary : salaryRecords) {
            System.out.println(salary);
        }

        
    }
 
    public static List<Salary> loadSalaryRecordsFromCSV(String filePath) {

        List<Salary> records = new ArrayList<>();
        String line;

        // The try-with-resources block ensures the reader is closed automatically.
        try (BufferedReader br = new BufferedReader(new FileReader(filePath))) {

            // Loop through the file, reading one line at a time
            while ((line = br.readLine()) != null) {

                String[] data = line.split(DELIMITER);

                if (data.length == 2) {
                    try {
                        String name = data[0].trim();
                        // Safely parse the second field as an Integer
                        Integer amount = Integer.parseInt(data[1].trim());

                        // Create and add the new Salary object
                        records.add(new Salary(name, amount));
                    } catch (NumberFormatException e) {
                        // Handle cases where 'amount' is not a valid number
                        System.err.println("Error parsing amount on line: " + line + ". Skipping record.");
                    }
                } else {
                    // Handle lines that don't have exactly 2 fields
                    System.err.println("Skipping malformed line: " + line);
                }
            }
        } catch (IOException e) {
            // Handle errors like 'File Not Found'
            System.err.println("Fatal Error: Could not read CSV file at " + filePath + ". " + e.getMessage());
        }

        return records;
    }
}