<%@ page contentType="text/html; charset=utf-8"%>

<%
	String towhere = "kr.jsp";
	String from = request.getRemoteAddr();
	String lang = "Korean";
	
	// System.out.println(from);
	if(from.endsWith("1")) {
		towhere = "en.jsp";
		lang = "English";
	}
%>

<jsp:forward page="<%=towhere%>">
	<jsp:param value="<%= lang %>" name="lang"/>
</jsp:forward>