package day02.hwDay01;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class Utils {
    private static final String CSV_TAB_DELIMITER = "\t";

    public static List<GroceryItem> readCSVFile(String filePath) {
        List<GroceryItem> groceryItems = new ArrayList<>();

        try (BufferedReader br = new BufferedReader(new FileReader(filePath))) {
            String line;
            while ((line = br.readLine()) != null) {
                // Skip empty or comment lines
                if (line.trim().isEmpty() || line.startsWith("#"))
                    continue;

                String[] data = line.split(CSV_TAB_DELIMITER);

                try {
                    String id = data[0].trim();
                    int quantity = Integer.parseInt(data[1].trim());
                    double unitPrice = Double.parseDouble(data[2].trim());
                    groceryItems.add(new GroceryItem(id, quantity, unitPrice));
                } catch (NumberFormatException e) {
                    System.err.println("Error parsing numeric values on line: " + line + ". Skipping record.");
                }

            }
        } catch (IOException e) {
            System.err.println("Fatal Error: Could not read CSV file at " + filePath + ". " + e.getMessage());
        }

        return groceryItems;
    }

    public static void createTxtFile(String content) {
        String timeStamp = String.valueOf(System.currentTimeMillis());
        String fileName = "output_file_" + timeStamp + ".txt";

        // Using try-with-resources ensures the FileWriter is closed automatically
        try (FileWriter writer = new FileWriter(fileName)) {
            writer.write(content);
        } catch (IOException e) {
            // System.out.println("An error occurred while writing to the file.");
            e.printStackTrace();
            throw new RuntimeException("Failed to write to file: " + fileName, e);
        }
    }
}
