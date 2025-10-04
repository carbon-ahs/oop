package day01.BankAccount;
// Create a BankAccount class that includes properties for account number, account name, and balance. 

// The class should have methods for withdrawing, depositing, and transferring funds between accounts. 

// Ensure that withdrawals or transfers do not result in a negative balance.

public class BankAccount {
    public int accountNumber;
    public String name;
    public double balance;

    public BankAccount(int accountNumber, String name, double balance) {
        this.accountNumber = accountNumber;
        this.name = name;
        this.balance = balance;
    }

    public void deposit(double amount) {
        if (amount > 0) {
            balance += amount;
            System.out.println("Deposited: " + amount);
        } else {
            System.out.println("Deposit amount must be positive.");
        }
    }

    public void withdraw(double amount) {
        if (amount > 0 && amount <= balance) {
            balance -= amount;
            System.out.println("Withdrew: " + amount);
        } else {
            System.out.println("Insufficient funds or invalid withdrawal amount.");
        }
    }

    public void transfer(BankAccount targetAccount, double amount) {
        if (amount > 0 && amount <= balance) {
            this.withdraw(amount);
            targetAccount.deposit(amount);
            System.out.println("Transferred: " + amount + " to account " + targetAccount.accountNumber);
        } else {
            System.out.println("Insufficient funds or invalid transfer amount.");
        }
    }

    public static void main(String[] args) {
        BankAccount bankAccount1 = new BankAccount("AC5000", "ahsan", 5000)
    }
}
