<%@ page  contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<h2>jdbc드라이버 테스트</h2>
<% 
   Connection con = null;
   
   Class.forName("com.mysql.jdbc.Driver");
   String url = "jdbc:mysql://localhost:3306/world";
   con = DriverManager.getConnection(url, "root", "1111");
   
   if(con != null){
      out.println("연결 성공");
   }
   else {
      out.println("연결 실패");
   }
   
   con.close();
%>
<br><br><br>

<h2>게시판</h2>
<ul>
   <li><a href="v1/List.jsp">게시판 버전1</a>

</ul>

</body>
</html>