<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
	<body>
		<h1>forwordExam2.jsp</h1>
			name : <%=request.getParameter("name") %>
			
			<%-- <% response.sendRedirect("forwordExam3.jsp"); %> --%>
			<jsp:forward page="forwordExam3.jsp" />
	</body>
</html>