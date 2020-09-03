<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%
		request.setCharacterEncoding("utf-8");
		
		String kor = request.getParameter("kor");
		String eng = request.getParameter("eng");
		String mat = request.getParameter("mat");

		int tot = Integer.praseInt(kor) + Integer.parseInt(eng)+Integer.parseInt(mat);
		
%>


</body>
</html>