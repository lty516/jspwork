<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<h1>includeExam2.jsp</h1>
	
	request : <%= request.getAttribute("first") %> <br>
	session : <%= session.getAttribute("first") %> <br>
	application : <%= application.getAttribute("first") %> <br>
	pageContext : <%= pageContext.getAttribute("first") %> <br>
	
		<%
			request.setAttribute("second","request객체");
			session.setAttribute("second","session객체");
			application.setAttribute("second","application객체");
			pageContext.setAttribute("second","pageContext객체");
		%>	
</body>
</html>