package day01.CreditCard;

public class CreditCard {
    public int maxLimit;
    public int currentUsage;
    public int perTransactionLimit;

    public CreditCard(int maxLimit) {
        this.maxLimit = maxLimit;
        this.currentUsage = 0;
        perTransactionLimit = 20000;
    }

    private Boolean canWithdraw(int amount) {
        if (amount <= (maxLimit - currentUsage)) {
            return true;
        }
        return false;
    }

    public void withdraw(int amount) {
        if (canWithdraw(amount)) {
            if (amount < perTransactionLimit) {
                currentUsage = currentUsage + amount;
                // System.out.println("Successful");
            } else {
                throw new IllegalArgumentException("Your limit crossed.");
            }
        } else {
            throw new IllegalArgumentException("Your limit crossed.");
        }
    }

    public void payBill(int amount) {
        if (canWithdraw(amount)) {
            withdraw(amount);
        } else {
            throw new IllegalArgumentException("Your limit crossed.");
        }
    }

}
