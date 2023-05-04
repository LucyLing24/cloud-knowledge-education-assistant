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
		String seleStr="SELECT * FROM student  where student_id='"+request.getParameter("pram_student_id")+"'";
        ResultSet rs=stmt.executeQuery(seleStr);
        rs.next();
        session.setAttribute("pram_student_id",request.getParameter("pram_student_id"));
       %>    
<form action="forupdatestu.jsp"  method="post">
<table  class="table">	
	<tr>	 
    	<td align="center" colspan="2">要修改信息的学生学号是：<%= request.getParameter("pram_student_id")%></td>
	</tr> 
	<tr>   
		<td align="center">原始信息</td><td align="center">修改信息</td>
	</tr>
	<tr> 
		<td>姓名:<%= rs.getString("name")%></td>
		<td><input type="text" value=<%= rs.getString("name")%> name="pram_name" class="form-control"></td>
	</tr>
	<tr> 
		<td>年龄:<%= rs.getString("age")%></td>
		<td><input type="text" value=<%= rs.getString("age")%> name="pram_age" class="form-control"></td>
	</tr>
	<tr> 
		<td>性别:<%= rs.getString("sex")%></td>
		<td><input type="text" value=<%= rs.getString("sex")%> name="pram_sex" class="form-control"></td>
	</tr>
	<tr> 
		<td>登录密码:<%= rs.getString("password")%></td>
		<td><input type="text" value=<%= rs.getString("password")%> name="pram_password" class="form-control"></td>
	</tr>
	<tr> 
		<td>手机号:<%= rs.getString("mobile_phone")%></td>
		<td><input type="text" value=<%= rs.getString("mobile_phone")%> name="pram_mobile_phone" class="form-control"></td>
	</tr>
    <tr> 	
		<td>所在班级号:<%= rs.getString("in_class_id")%></td>
		<td><input type="text" value=<%= rs.getString("in_class_id")%> name="pram_in_class_id" class="form-control"></td>
	</tr>
	
	<tr>
		<td align="center" colspan="2">
		<input type="submit" value="提交" name="B1" class="btn btn-primary btn-xs">  
		<input type="reset" value="重置" name="B2" class="btn btn-white btn-xs"></td>
	</tr>
</table>
</form>	
 </body>
</html>
