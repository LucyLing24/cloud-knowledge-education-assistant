<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<html>
  <head>
  <link href="../css/JWindexstyle.css" rel="stylesheet">
  </head>
  <body>
<% 	
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://127.0.0.1:3306/jwgl?useUnicode=true&characterEncoding=utf-8";
		Connection dbCon=DriverManager.getConnection(url,"root","shen");
		Statement stmt=dbCon.createStatement();
		session.setAttribute("pram_class_id","jsj001");
		String seleStr="SELECT * FROM class  where class_id=pram_class_id";
        ResultSet rs=stmt.executeQuery(seleStr);
        rs.next();

       %>    
<form action="forupdateclass.jsp"  method="post">
<table  class="table">	
	<tr>	
    	<td align="center" colspan="2">要修改信息的班级号是：jsj001</td>
	</tr> 
	<tr>   
		<td align="center">原始信息</td><td align="center">修改信息</td>
	</tr>
	<tr> 
		<td>班级:计算机科学与技术1班</td>
		<td><input type="text" value="" name="pram_class_name" class="form-control"></td>
	</tr>
	<tr> 
		<td>所属院系:<%=rs.getString("in_department_id")%></td>
		<td><input type="text" value="" name="pram_in_major" class="form-control"></td>
	</tr>
	<tr> 
		<td>指导老师:<%=rs.getString("teacher_in_charge")%></td>
		<td><input type="text" value="" name="pram_teacher_in_charge" class="form-control"></td>
	</tr>
	<tr>
		<td align="center" colspan="2">
		<input type="submit" value="提交" class="btn btn-primary btn-xs" name="B1">  
		<input type="reset" value="重置" class="btn btn-white btn-xs" name="B2"></td>
	</tr>
</table>
</form>	
 </body>
</html>
