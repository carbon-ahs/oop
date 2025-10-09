package day02.CarRentalHW;
//  "A car rental company manages a fleet of vehicles 

// available for rent. Customers can rent a car for a specific period, 
// and each car's availability must be tracked. The system needs to handle 
// different types of cars, their rental rates, and maintenance schedules."

import java.util.Date;

public class Vehicle {
    private String id;
    private String type;
    private double rentalRatePerDay;
    private boolean isAvailable;
    private Date maintenanceDateStart;
    private Date maintenanceDateEnd;

    public Vehicle(String id, String type, double rentalRatePerDay) {
        this.id = id;
        this.type = type;
        this.rentalRatePerDay = rentalRatePerDay;
        this.isAvailable = true; // Initially, the vehicle is available
    }

    // Getters and Setters
    public String getId() {
        return id;
    }

    public String getType() {
        return type;
    }

    public double getRentalRatePerDay() {
        return rentalRatePerDay;
    }

    public boolean isAvailable() {
        return isAvailable;
    }

    public void setAvailable(boolean available) {
        isAvailable = available;
    }

    public Date getMaintenanceDateStart() {
        return maintenanceDateStart;
    }

    public void setMaintenanceDateStart(Date maintenanceDateStart) {
        this.maintenanceDateStart = maintenanceDateStart;
        setAvailable(false); // Vehicle is not available during maintenance
    }
}
