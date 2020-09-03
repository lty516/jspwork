<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
   <%
      if(session.getAttribute("id") == null){
   %>
         <h2>Welcome to my site</h2>
         <ul>
            <li><a href="login.jsp">로그인</a></li>
            <li><a href="shop.jsp">쇼핑몰</a></li>
         </ul>
   <%
      }
      else{
   %>
         <h2><%=session.getAttribute("id") %>님 환영합니다.</h2>
         <ul>
            <li><a href="logout.jsp">로그아웃</a></li>
            <li><a href="shop.jsp">쇼핑몰</a></li>
         </ul>
   <%
      }
   %>
</body>
</html>