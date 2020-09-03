<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
   <%
      String id = request.getParameter("id");
      String pw = request.getParameter("pw");
      
      if("tiger".equals(id) && "1111".equals(pw)){
         session.setAttribute("id", id);
         response.sendRedirect("index.jsp");
      }
   %>
   <form action="login.jsp" method="post">
      아이디 : <input type="text" name="id"/><br><br>
      패스워드 : <input type="password" name="pw"/><br><br>
      <input type="submit" value="전송"/>
   </form>
</body>
</html>