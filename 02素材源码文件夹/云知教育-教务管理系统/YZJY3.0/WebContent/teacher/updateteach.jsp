<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<html>
  <head>
  </head>
  <body>
<% 	
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://127.0.0.1:3306/jwgl?useUnicode=true&characterEncoding=utf-8";
		Connection dbCon=DriverManager.getConnection(url,"root","shen");
		Statement stmt=dbCon.createStatement();
		String seleStr="SELECT * FROM teacher  where teacher_id='"+request.getParameter("pram_teacher_id")+"'";
        ResultSet rs=stmt.executeQuery(seleStr);
        rs.next();
        session.setAttribute("pram_teacher_id",request.getParameter("pram_teacher_id"));
       %>    
<form action="forupdatecourse.jsp"  method="post"> 
<table  class="table">	
	<tr>	
    	<td align="center" colspan="2">要修改信息的教师工号是：<%= request.getParameter("pram_teacher_id")%></td>
	</tr> 
	<tr>   
		<td align="center">原始信息</td><td align="center">修改信息</td>
	</tr>
	<tr> 
		<td>姓名:<%= rs.getString("name")%></td>
		<td><input type="text" value=<%= rs.getString("name")%> name="pram_name"></td>
	</tr>
	<tr> 
		<td>年龄:<%= rs.getString("age")%></td>
		<td><input type="text" value=<%= rs.getString("age")%> name="pram_age"></td>
	</tr>
	<tr> 
		<td>性别:<%= rs.getString("sex")%></td>
		<td><input type="text" value=<%= rs.getString("sex")%> name="pram_sex"></td>
	</tr>
	<tr> 
		<td>手机号码:<%= rs.getString("mobile_phone")%></td>
		<td><input type="text" value=<%= rs.getString("mobile_phone")%> name="pram_mobile_phone"></td>
	</tr>
	<tr> 
		<td>职称:<%= rs.getString("job_title")%></td>
		<td><input type="text" value=<%= rs.getString("job_title")%> name="pram_job_title"></td>
	</tr>
    <tr> 	
		<td>所在院系:<%= rs.getString("in_department_id")%></td>
		<td><input type="text" value=<%= rs.getString("in_department_id")%> name="pram_in_department_id"></td>
	</tr>
	<tr> 	
		<td>指导班级:<%= rs.getString("class_in_charge")%></td>
		<td><input type="text" value=<%= rs.getString("class_in_charge")%> name="pram_class_in_charge"></td>
	</tr>
	<tr> 	
		<td>教授课程:<%= rs.getString("course_in_charge")%></td>
		<td><input type="text" value=<%= rs.getString("course_in_charge")%> name="pram_course_in_charge"></td>
	</tr>
	<tr> 	
		<td>登陆密码:<%= rs.getString("password")%></td>
		<td><input type="text" value=<%= rs.getString("password")%> name="pram_password"></td>
	</tr>
	<tr>
		<td align="center" colspan="2">
		<input type="submit" value="提交" name="B1">  
		<input type="reset" value="重置" name="B2"></td>
	</tr>
</table>
</form>	
 </body>
</html>
