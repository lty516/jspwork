
<%@page import="java.util.*"%>
<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
   <% request.setCharacterEncoding("utf-8"); %>
   <jsp:useBean id="parking" class="mybean.index.ParkingBean" scope="application"/>
   <jsp:useBean id="car" class="mybean.index.Car" scope="page"/>
   
   
   <jsp:setProperty property="enter" name="parking" param="enter"/> 
   <jsp:setProperty property="exit" name="parking"/>
   
   <h1>주차 관리 프로그램</h1>
   <form method="post">
      주차장에 들어온 차 번호 : <input type="text" name="enter"/> &nbsp;&nbsp;
      <input type="submit" value="입차" />
   </form>
   
   <form method="post">
      주차장에서 나간 차 번호 : <input type="text" name="exit"/> &nbsp;&nbsp;
      <input type="submit" value="출차" />
   </form>
   <hr/>
   주차된 차량 목록<br><br>
   <table border="1">
      <tr>
         <th>차량 번호</th> <th>입차 시간</th>
      </tr>
<%
   ArrayList cars = parking.getCarList();
   for(int i=0; i<cars.size(); i++){
       //car = (Car)cars.get(i);
       pageContext.setAttribute("car", cars.get(i)); //car scope : page 따라서 page범위에 값을 넣어줌
%>
         <tr>   
            <td><jsp:getProperty property="plateNumber" name="car"/></td>
            <td><jsp:getProperty property="parkingTime" name="car"/></td>
         </tr>
<%
   }
   
%>         
   </table>
   <br>
   총 주차대수 : <jsp:getProperty name="parking" property="counter"/>
</body>
</html>