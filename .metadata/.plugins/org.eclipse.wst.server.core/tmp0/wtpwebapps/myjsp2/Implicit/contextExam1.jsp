<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	pageContext에 값 저장<br>
	<% pageContext.setAttribute("i", 10); %>
	<% pageContext.setAttribute("j", 100, pageContext.SESSION_SCOPE); %>
	
	request에 값 저장<br>
	<% request.setAttribute("i",20); %>
	
	session에 값 저장<br>
	<% session.setAttribute("i", 30); %>

	application에 값 저장<br>
	<% application.setAttribute("i", 30); %>
</body>
</html>