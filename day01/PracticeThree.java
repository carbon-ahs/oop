package day01;

import java.util.ArrayList;
import java.util.List;

public class PracticeThree {
    private static final String CSV_FILE = "day01\\salarysheet.csv";
    private static final String DELIMITER = ",";

    public static void main(String[] args) {
        List<Salary> salaryRecords = new ArrayList<>();
        salaryRecords = loadSalaryRecordsFromCSV(CSV_FILE);
    }
}
