<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"><title>Insert title here</title></head>

<% 
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="req" class="mybean.scope.IncludeBean" scope="request" />
<jsp:setProperty property="header" name="req" param="header" />
<jsp:setProperty property="footer" name="req" param="footer" />

<body>
<!-- 머릿말 -->
<jsp:include page="inc/header.jsp"/>
	<form method="post"> 
		머릿말이 들어갈 내용 : <br>
		<textarea rows= "2" cols="60" name="header"></textarea>
		<br><br>
		꼬릿말에 들어갈 내용		
		<textarea rows= "2" cols="60" name="footer"></textarea>
		<br><br>
		<input type="submit" value="새로고침" />
	</form>
<hr/>
<!-- 꼬릿말 -->
<jsp:include page="inc/footer.jsp"/>
</body>
</html>