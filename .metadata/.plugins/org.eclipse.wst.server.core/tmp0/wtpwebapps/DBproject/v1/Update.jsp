<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.sql.*" %>
<html>
<head> <title>JSPBoard</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script>
   function check() {
      if (document.form.b_pass.value == "") {
       alert("������ ���� �н����带 �Է��ϼ���.");
        form.b_pass.focus();
       return false;
       }
      document.form.submit();
   }
</script>
</head>
<body>
<center>
<br><br>
<table width=460 cellspacing=0 cellpadding=3>
  <tr>
   <td bgcolor=#FF9018  height=21 align=center class=m>�����ϱ�</td>
  </tr>
</table>
<%
   String b_num = request.getParameter("b_num");

   Connection con = null;
   Statement stmt = null;
   ResultSet rs = null;
   
   String content = "", name="",email="", subject="";

   try {
      Class.forName("com.mysql.jdbc.Driver");
      String url = "jdbc:mysql://localhost:3306/jspdb";
      con = DriverManager.getConnection(url, "root", "1111");
      
      String sql = "select * from tblboard where b_num=" + b_num;
      stmt = con.createStatement();
      rs = stmt.executeQuery(sql);
      
      if (rs.next()) {
         name = rs.getString("b_name");
         email = rs.getString("b_email");
         subject = rs.getString("b_subject");
         content = rs.getString("b_content");

      }
      
   }
   catch (Exception err) { err.printStackTrace(); }
   finally {
      if(con != null) { con.close(); }
      if(stmt != null) { stmt.close(); }
      if(rs != null) { rs.close(); }
   }

%>
<form name=form method=post action="UpdateProc.jsp" >
<input type="hidden" name="b_num" value="<%=b_num %>" />
<table width=70% cellspacing=0 cellpadding=7>
 <tr>
  <td align=center>
   <table border=0>
    <tr>
     <td width=20%>�� ��</td>
     <td width=80%>
     <input type=text name=b_name size=30 maxlength=20 value="<%=name%>">
    </td>
   </tr>
    <tr>
     <td width=20%>E-Mail</td>
     <td width=80%>
     <input type=text name=b_email size=30 maxlength=30 value="<%=email%>">
    </td>
    </tr>
   <tr>
     <td width=20%>�� ��</td>
     <td width=80%>
     <input type=text name=b_subject size=50 maxlength=50 value="<%=subject%>">
    </td>
    <tr>
     <td width=20%>�� ��</td>
     <td width=80%>
     <textarea name=b_content rows=10 cols=50><%=content%></textarea>
    </td>
    </tr>
   <tr>
     <td width=20%>��� ��ȣ</td> 
     <td width=80%><input type=password name=b_pass size=15 maxlength=15>
      �����ÿ��� ��й�ȣ�� �ʿ��մϴ�.</td>
    </tr>
   <tr>
     <td colspan=2 height=5><hr size=1></td>
    </tr>
   <tr>
     <td colspan=2>
     <input type=Button value="�����Ϸ�" onClick="check()">
      <input type=reset value="�ٽü���"> 
      <input type=button value="�ڷ�" onClick="history.back()">
    </td>
    </tr> 
   </table>
  </td>
 </tr>
</table>
</form> 
</center>
</body>
</html>