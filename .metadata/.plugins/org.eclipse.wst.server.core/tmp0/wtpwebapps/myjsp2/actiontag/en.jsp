<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<h2> Thank you very much for visiting my site</h2>
	Your registered data are.<br>
	<ul>
		<li>name:<%=request.getParameter("irum") %></li>
		<li>address:<%=request.getParameter("addr") %></li>
		<li>languege:<%=request.getParameter("lang") %></li>
	</ul>
</body>
</html>