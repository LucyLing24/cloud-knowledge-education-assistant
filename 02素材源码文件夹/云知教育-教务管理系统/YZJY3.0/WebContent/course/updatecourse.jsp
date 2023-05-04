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
		String seleStr="SELECT * FROM course  where course_id='"+request.getParameter("pram_course_id")+"'";
        ResultSet rs=stmt.executeQuery(seleStr);
        rs.next();
        session.setAttribute("pram_course_id",request.getParameter("pram_course_id"));
       %>    
<form action="forupdatecourse.jsp"  method="post">
<table  class="table">	
	<tr>	
    	<td align="center" colspan="2">要修改信息的课程号是：<%= request.getParameter("pram_course_id")%></td>
	</tr> 
	<tr>   
		<td align="center">原始信息</td><td align="center">修改信息</td>
	</tr>
	<tr> 
		<td>课程:<%= rs.getString("course_name")%></td>
		<td><input type="text" value=<%= rs.getString("course_name")%> name="pram_course_name" class="form-control"></td>
	</tr>
	<tr> 
		<td>课程信息:<%= rs.getString("course_info")%></td>
		<td><input type="text" value=<%= rs.getString("course_info")%> name="pram_course_info" class="form-control"></td>
	</tr>
	<tr> 
		<td>课时:<%= rs.getString("class_hour")%></td>
		<td><input type="text" value=<%= rs.getString("class_hour")%> name="pram_class_hour" class="form-control"></td>
	</tr>
	<tr> 
		<td>指导老师:<%= rs.getString("teacher_in_charge")%></td>
		<td><input type="text" value=<%= rs.getString("teacher_in_charge")%> name="pram_teacher_in_charge" class="form-control"></td>
	</tr>
	<tr> 
		<td>期中测试时间:<%= rs.getString("midterm_exam_time")%></td>
		<td><input type="text" value=<%= rs.getString("midterm_exam_time")%> name="pram_midterm_exam_time" class="form-control"></td>
	</tr>
    <tr> 	
		<td>期末测试时间:<%= rs.getString("finterm_exam_time")%></td>
		<td><input type="text" value=<%= rs.getString("finterm_exam_time")%> name="pram_finterm_exam_time" class="form-control"></td>
	</tr>
	<tr> 	
		<td>学分:<%= rs.getString("credit")%></td>
		<td><input type="text" value=<%= rs.getString("credit")%> name="pram_credit" class="form-control"></td>
	</tr>
	<tr>
		<td align="center" colspan="2">
		<input type="submit" value="提交" name="B1" class="btn btn-primary btn-xs" style="padding:5px 15px;">  
		<input type="reset" value="重置" name="B2" class="btn btn-white btn-xs" style="padding:5px 15px;"></td>
	</tr>
</table>
</form>	
 </body>
</html>
