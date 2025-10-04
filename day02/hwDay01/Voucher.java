package day02.hwDay01;
import java.util.List;

public class Voucher {
    public List<GroceryItem> groceryItems;
    public int totalItemCount;
    public double grandTotal;
    public double vat;
    public double netTotal;

    public Voucher(List<GroceryItem> items) {
        this.groceryItems = items;
        this.totalItemCount = calculateTotalItemCount();
        this.grandTotal = calculateGrandTotal();
        this.vat = calculateVat();
        this.netTotal = calculateNetTotal();
    }

    private double calculateGrandTotal() {
        double grandTotal = 0;
        for (GroceryItem item : groceryItems) {
            grandTotal += item.getTotalPrice();
        }
        return grandTotal;
    }

    private int calculateTotalItemCount() {
        int itemCount = 0;
        for (GroceryItem item : groceryItems) {
            itemCount += item.quantity;
        }
        return itemCount;
    }

    private double calculateVat() {
        final double VAT_PERCENTAGE = 0.05;
        return grandTotal * VAT_PERCENTAGE;
    }

    private double calculateNetTotal() {
        return grandTotal + vat;
    }

    public String getFormattedStringForPrint() {
        String formattedString = "";
        List<String> headers = List.of("ITEM-ID", "Quantity", "Unit Price", "Total Price");
        for (String header : headers) {
            formattedString += String.format("%-12s", header);
        }
        formattedString += "\n";
        for (GroceryItem item : groceryItems) {
            formattedString += String.format("%-12s", item.id);
            formattedString += String.format("%-12d", item.quantity);
            formattedString += String.format("%-12.2f", item.unitPrice);
            formattedString += String.format("%-12.2f", item.getTotalPrice());
            formattedString += "\n";
        }
        formattedString += "\n";
        formattedString += String.format("Total Items: %d\n", totalItemCount);
        formattedString += String.format("\t\t\t\tGrand Total: %.2f\n", grandTotal);
        formattedString += String.format("\t\t\t\tVAT (5%%): %.2f\n", vat);
        formattedString += String.format("\t\t\t\tNet Total: %.2f\n", netTotal);

        return formattedString;

    }

    @Override
    public String toString() {
        return "Voucher{" +
                "items=" + groceryItems +
                ", totalItemCount=" + totalItemCount +
                ", grandTotal=" + grandTotal +
                ", vat=" + vat +
                ", netTotal=" + netTotal +
                '}';
    }
}
