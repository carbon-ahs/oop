package day02.hwDay01;

import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class Caller {
    private static final String CSV_FILE = "day02\\hwDay01\\groceryitems.csv";

    public static void main(String[] args) {

        List<GroceryItem> groceryItems = Utils.readCSVFile(CSV_FILE);
        validateGroceryItems(groceryItems);
        Voucher voucher = new Voucher(groceryItems); // validate in constructor
        Utils.createTxtFile(voucher.getFormattedStringForPrint()); // get voucher string format
    }

    private static void validateGroceryItems(List<GroceryItem> groceryItems) {
        Set<String> seenIdSet = new HashSet<>();
        Iterator<GroceryItem> iterator = groceryItems.iterator();

        while (iterator.hasNext()) {
            GroceryItem item = iterator.next();
            if (!seenIdSet.add(item.id)) {
                throw new IllegalArgumentException("Duplicate ID found: " + item.id);
            }
        }
    }

}