package mybean.index;

import java.util.Date;

public class Car {
	private String plateNumber;
	private long parkingTime;

	public Car() {}

	public Car(String plateNumber, long parkingTime) {
		this.plateNumber = plateNumber;
		this.parkingTime = parkingTime;
	}

	public String getPlateNumber() {
		return plateNumber;
	}
	public Date getParkingTime() {
		return new Date(parkingTime);
	}
}
