<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	pageContext에 값 출력<br>
	<%= pageContext.getAttribute("i") %>	<br>
	<%= pageContext.getAttribute("i",pageContext.APPLICATION_SCOPE)%>	<br>
	request에 값 출력<br>
	<%= request.getAttribute("i") %>
	<br>
	session에 값 출력<br>
	<%= session.getAttribute("i") %> <br>
	<%= session.getAttribute("j") %>
	<br>
	application에 값 출력<br>
	<%= application.getAttribute("i") %>
</body>
</html>