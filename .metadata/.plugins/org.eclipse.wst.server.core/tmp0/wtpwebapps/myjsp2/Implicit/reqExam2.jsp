<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
	<body>
	<%
		if(request.getMethod().equalsIgnoreCase("get")) {
	%>
		<form action="reqExam2.jsp" method="post">
			이름 : <input type="text" name="name"/><br><br>
			주소 : <input type="text" name="addr"/><br><br>
			취미 : <br>
				<input type="checkbox" name="hobby" value="등산">등산<br>
				<input type="checkbox" name="hobby" value="독서">독서<br>
				<input type="checkbox" name="hobby" value="여행">여행<br>
				<input type="checkbox" name="hobby" value="낚시">낚시<br>
			<input type="submit" value="전송"/>
		</form>
	<% 
		}
		else{
	%>
			<%
				request.setCharacterEncoding("utf-8");
				
				String name = request.getParameter("name");
				String addr = request.getParameter("addr");
			
			%>
			
			당신의 이름은 <%=name %>이고 주소는 <%=addr %> 입니다.
			<br></br>
			<ul>
			<%
				String[] hobbies = request.getParameterValues("hobby");
				if(hobbies != null){
					for(String s : hobbies){
			%>
						<li><%=s %></li>
			<%
					}			
				}
				else{
			%>
						<li>선택된 값이 없습니다.</li>
			<%		
				}
			%>
			</ul>
	<% 
		}
	%>
	</body>
</html>