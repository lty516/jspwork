<%@ page  contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
   <jsp:useBean id="msg" class="mybean.simple.messageBean"/>
   <jsp:setProperty property="message" name="msg" value="JSP를 정복하자~~"/>
   
   ActionTag를 이용한 메시지 출력<br>
   <jsp:getProperty property="message" name="msg"/>
   <br><br>
   Scriptlet을 이용한 메시지 출력<br>
   <%
      msg.setMessage("Java를 정복하자~~");
   %>
   <%=msg.getMessage() %>
   

</body>
</html>
<!-- 
   class name : myBean.simple.MessageBean
   property
      name   r/w      data type   desc
      ------------------------------------
      message   r/w      String      메시지 입출력
      
 -->