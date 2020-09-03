package mybean.scope;

/* 
class name : myBean.simple.MessageBean
property
   name   r/w    data 	type   desc
   ------------------------------------
   randomNumber   r     int    임의의 값 생성
   maxNumber	  r/w	int	    생성 가능한 최댓값
   minNumber	  r/w	int	   생성가능한 최솟값
   counter		  r		int   주사위 던진 회수    
*/

import java.util.Random;

public class DiceBean {
	private int min;
	private int max;
	private int counter;
	private Random rand = new Random();
	
	public int getMinNumber() {return min;}
	public void setMinNumber(int min) {this.min = min;}
	public int getMaxNumber() {return max;}
	public void setMaxNumber(int max) {this.max = max;}
	public int getCounter() {
		counter++;
		return counter;
		}
	
	public int getRandomNumber() {
		return rand.nextInt(max-min+1)+min;
	}
}
