<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
		1. 다른 페이지로 이동 
		<%
				//response.sendRedirect("requestExam.html");
				//response.sendRedirect("http://www.naver.com");
		%>
	<br><br>
	
		2. 선택에 의한 페이지 이동
		<%
				String param = request.getParameter("param");
				if(param == null || param.isEmpty()){
		%>
					<h2>페이지 이동을 하지 않습니다.</h2>
		<%
				}
				else{
					response.sendRedirect("reqExam2.jsp");
				}
		%>
</body>
</html>