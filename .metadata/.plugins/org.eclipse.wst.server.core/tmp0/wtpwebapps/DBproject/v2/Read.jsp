<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.sql.*" %>
<html>
<head><title>JSPBoard</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<%
	String b_num = request.getParameter("b_num");
	
	Connection con = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	String content="", name="", regdate="", email="", homepage="", subject="",
			ip="";
	int count = 0;
	try{
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/jspdb";
		con = DriverManager.getConnection(url, "root", "1111");
		
		String sql = "select * from tblboard where b_num=" + b_num;
		stmt = con.createStatement();
		rs = stmt.executeQuery(sql);
		
		if(rs.next()) {
			name = rs.getString("b_name");
			regdate = rs.getString("b_regdate");
			email = rs.getString("b_email");
			homepage = rs.getString("b_homepage");
			subject = rs.getString("b_subject");
			content = rs.getString("b_content");
			ip = rs.getString("b_ip");
			count = rs.getInt("b_count");
		}
		count++;
		
		sql = "update tblboard set b_count=" + count + " where b_num=" + b_num;
		stmt.executeUpdate(sql);
		
	} catch(Exception err) {
		err.printStackTrace();
	} finally {
		if(con!= null){con.close();}
		if(stmt != null) { stmt.close(); }
		if(rs != null) { rs.close(); }
	}
%>
<body>
<br><br>
<table align=center width=70% border=0 cellspacing=3 cellpadding=0>
 <tr>
  <td bgcolor=9CA2EE height=25 align=center class=m>���б�</td>
 </tr>
 <tr>
  <td colspan=2>
   <table border=0 cellpadding=3 cellspacing=0 width=100%> 
    <tr> 
	 <td align=center bgcolor=#dddddd width=10%> �� �� </td>
	 <td bgcolor=#ffffe8><%=name %></td>
	 <td align=center bgcolor=#dddddd width=10%> ��ϳ�¥ </td>
	 <td bgcolor=#ffffe8><%=regdate %></td>
	</tr>
    <tr>
	 <td align=center bgcolor=#dddddd width=10%> �� �� </td>
	 <td bgcolor=#ffffe8 ><%=email %></td> 
	 <td align=center bgcolor=#dddddd width=10%> Ȩ������ </td>
	 <td bgcolor=#ffffe8 ><a href="http://<%=homepage %>" target="_new">http://<%=homepage %></a></td> 
	</tr>
    <tr> 
     <td align=center bgcolor=#dddddd> �� ��</td>
     <td bgcolor=#ffffe8 colspan=3><%=subject %></td>
   </tr>
   <tr> 
    <td colspan=4><%=content.replace("\n", "<br>")%></td>
   </tr>
   <tr>
    <td colspan=4 align=right>
    <%=ip %> �� ���� ���� ����̽��ϴ�./  ��ȸ�� :<%=count %> 
    </td>
   </tr>
   </table>
  </td>
 </tr>
 <tr>
  <td align=center colspan=2> 
	<hr size=1>
	[ <a href="javascript:list()">�� ��</a> | 
	<a href="Update.jsp?b_num=<%=b_num%>">�� ��</a> |
	<a href="Delete.jsp?b_num=<%=b_num%>">�� ��</a> ]<br>
  </td>
 </tr>
</table>
</body>
</html>