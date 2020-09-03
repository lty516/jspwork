<%@ page contentType="text/html; charset=EUC-KR"%>
<%@page import="java.sql.*"%>

<%
	request.setCharacterEncoding("euc-kr");
	String name = request.getParameter("b_name");
	String email = request.getParameter("b_email");
	String homepage = request.getParameter("b_homepage");
	String subject = request.getParameter("b_subject");
	String content = request.getParameter("b_content");
	String pass = request.getParameter("b_pass");
	String ip = request.getParameter("b_ip");
	
	
	//out.println(name +", " + email +", " + homepage + ", " + subject +", "  + content + ", " + pass + "," + ip);
%>

         <%
   Connection con = null;
   PreparedStatement stmt = null; //쿼리문과 데이터를 따로따로 전송 
   
   try{
      Class.forName("com.mysql.jdbc.Driver");
      String url = "jdbc:mysql://localhost:3306/jspdb";
      con = DriverManager.getConnection(url, "root", "1111");
      
      String sql = "insert into tblboard(b_name, b_email, b_homepage, b_subject," +
    		  	   "b_content, b_pass, b_count, b_ip, b_regdate, b_pos, b_depth)" +
      			   "values(?, ?, ?, ?, ?, ?, 0, ?, now(), 0, 0);";
      
      stmt = con.prepareStatement(sql);
      
      stmt.setString(1,name);
      stmt.setString(2,email);
      stmt.setString(3,homepage);
      stmt.setString(4,subject);
      stmt.setString(5,content);
      stmt.setString(6,pass);
      stmt.setString(7,ip);
      
      stmt.executeUpdate();
   }
   catch(Exception err){
      err.printStackTrace();
   }
   finally{
      if( con != null){ con.close(); }
      if( stmt != null){ stmt.close(); }
   
   }
%>   

<% 
	//response.sendRedirect("List.jsp"); //자동으로 넘어가기 
	
	// 밑에는 수동으로 선택해서 이동
%>
<ul>
	<li><a href="Post.jsp">글쓰기 페이지로 이동</a></li>
	<li><a href="List.jsp">리스트페이지로 이동</a></li>
</ul>



