package mybean.simple;

import java.util.*;

public class CalendarBean {
   private Date today;
   private Calendar cal;
   private String greeting;
   
   public CalendarBean() {
      today = new Date();
      cal = Calendar.getInstance();
   }
   
   public String getToday() { return today.toString();   }
   
   public int getYear() { return cal.get(Calendar.YEAR); }
   public int getMonth() { return cal.get(Calendar.MONTH)+1; }
   public int getDate() { return cal.get(Calendar.DATE); }
   
   public String getGreeting() {
         return greeting;
      }

      public void setGreeting(String msg) {
         greeting = msg;
      }
   }