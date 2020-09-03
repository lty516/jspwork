<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
	<body>
		<h1>includeExam1.jsp</h1>
		
		<%
			request.setAttribute("first","request객체");
			session.setAttribute("first","session객체");
			application.setAttribute("first","application객체");
			pageContext.setAttribute("first","pageContext객체");
		%>
		
		request : <%= request.getAttribute("first") %> <br>
		session : <%= session.getAttribute("first") %> <br>
		application : <%= application.getAttribute("first") %> <br>
		pageContext : <%= pageContext.getAttribute("first") %> <br>
		
		<!-- <jsp:include page="includeExam2.jsp" /> -->
		<%@include file="includeExam2.jsp" %>
		
		<hr/>
		
		request : <%= request.getAttribute("second") %> <br>
		session : <%= session.getAttribute("second") %> <br>
		application : <%= application.getAttribute("second") %> <br>
		pageContext : <%= pageContext.getAttribute("second") %> <br>
		
				
		
	</body>
</html>