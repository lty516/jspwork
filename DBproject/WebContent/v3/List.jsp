<%@page import="java.sql.*"%>
<%@ page contentType="text/html;charset=euc-kr" %>
<%@page import="dbcp.DBConnectionMgr"%>

<HTML>
<link href="style.css" rel="stylesheet" type="text/css">
<script>
   function check(){
      if(document.search.keyWord.value == ""){
         alert("�˻�� �Է��ϼ���.");
         document.search.keyWord.focus();
         return;
      }
      document.search.submit();
   }
</script>
<BODY>


<center><br>
<h2>JSP Board</h2>

<table align=center border=0 width=80%>
<tr>
   <td align=left>Total :  Articles(
      <font color=red>  1 / 10 Pages </font>)
   </td>
</tr>
</table>

<table align=center width=80% border=0 cellspacing=0 cellpadding=3>
<tr>
   <td align=center colspan=2>
      <table border=0 width=100% cellpadding=2 cellspacing=0>
         <tr align=center bgcolor=#D0D0D0 height=120%>
            <td> ��ȣ </td>
            <td> ���� </td>
            <td> �̸� </td>
            <td> ��¥ </td>
            <td> ��ȸ�� </td>
         </tr>
         <!-- �� ��� ��� -->
         <%
         request.setCharacterEncoding("euc-kr");
         String keyField = request.getParameter("keyField");
         String keyWord = request.getParameter("keyWord");
      
   
   String sql = null;
   DBConnectionMgr pool = null;
   Connection con = null;
   Statement stmt=null;
   ResultSet rs = null;
   
   try{
      pool = DBConnectionMgr.getInstance();
      con = pool.getConnection();
      
      if(keyWord == null || keyWord.equals("") || keyWord.isEmpty()){
      
         sql = "select * from tblboard"; 
      }
      
      else{
         sql="select * from tblboard where " + keyField + " like '%" + keyWord + "%'";
      
      }
            
      stmt = con.createStatement();
      rs= stmt.executeQuery(sql);
      
      while(rs.next()){
%>

      <tr>
      <td><%=rs.getInt("b_num") %></td>
      <td><a href ='Read.jsp?b_num=<%=rs.getInt("b_num")%>'><%=rs.getString("b_subject") %></a></td>
      <td><%=rs.getString("b_name") %></td>
      <td><%=rs.getString("b_regdate") %></td>
      <td><%=rs.getInt("b_count") %></td>
      </tr>         
<%          
      }
   }
   
   catch(Exception err){
      err.printStackTrace();
   }
   finally{
	   pool.freeConnection(con,stmt,rs);
   
   }
%>   
         
         
      
      </table>
   </td>
</tr>
<tr>
   <td><BR><BR></td>
</tr>
<tr>
   <td align="left">Go to Page </td>
   <td align=right>
      <a href="Post.jsp">[�۾���]</a>
      <a href="javascript:list()">[ó������]</a>
   </td>
</tr>
</table>
<BR>
<form action="List.jsp" name="search" method="post">
   <table border=0 width=527 align=center cellpadding=4 cellspacing=0>
   <tr>
      <td align=center valign=bottom>
         <select name="keyField" size="1">
            <option value="b_name"> �̸�
            <option value="b_subject"> ����
            <option value="b_content"> ����
         </select>

         <input type="text" size="16" name="keyWord" >
         <input type="button" value="ã��" onClick="check()">
         <input type="hidden" name="page" value= "0">
      </td>
   </tr>
   </table>
</form>
</center>   
</BODY>
</HTML>