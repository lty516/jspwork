package mybean.index;

import java.util.*;

public class ParkingBean {
	private ArrayList carList = new ArrayList();
	
	public void setEnter(String plate) {
		Car car = new Car(plate, System.currentTimeMillis());
		carList.add(car);
	}
	
	public void setExit(String plate) { 		
		Car car = null;
		for (int i = 0; i < carList.size() ; i++) {
			car = (Car)carList.get(i);
			
			if (plate.equals(car.getPlateNumber())) {
				carList.remove(i);
				break;
			}
		}	
	}
	
	public ArrayList getCarList() {
		return carList;
	}
	
	public int getCounter() {
		return carList.size();
	}
}