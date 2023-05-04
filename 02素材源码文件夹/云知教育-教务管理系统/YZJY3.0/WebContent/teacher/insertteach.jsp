<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<html>
  <head>
     <title>添加记录</title>
         <link href="https://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
     	<link href="../css/JWindexstyle.css" rel="stylesheet">
  </head>
  <body>
<form action="forinsertteach.jsp"  method="post" class="col-sm-8">
<table  class="table">	
	<tr>  
		<td>老师工号:</td>
		<td><input type="text" name="pram_teacher_id" class="form-control"></td>
	</tr>
	<tr> 
		<td>姓名:</td>
		<td><input type="text" name="pram_name" class="form-control"></td>
	</tr>
	<tr> 	
		<td>密码:</td>
		<td><input type="password"  name="pram_password" class="form-control"></td>
	</tr>
	<tr> 
		<td>年龄:</td>
		<td><input type="text" name="pram_age" class="form-control"></td>
	</tr>
	<tr> 
		<td>性别:</td>
		<td><input type="radio"  name="pram_sex" value="male" checked>男 &nbsp;&nbsp;<input type="radio" name="pram_sex" value="female">女</td>
	</tr>
	<tr> 	
		<td>手机号:</td>
		<td><input type="tel"  name="pram_mobile_phone" class="form-control"></td>
	</tr>
	<tr> 
		<td>职称:</td>
		<td><input type="text" name="pram_job_title" class="form-control"></td>
	</tr>
	<tr> 
		<td>所在院系:</td>
		<td><input type="text" name="pram_in_department_id" class="form-control"></td>
	</tr>
    <tr> 	
		<td>指导班级:</td>
		<td><input type="text"  name="pram_class_in_charge" class="form-control"></td>
	</tr>

	
	<tr> 	
		<td>教授课程:</td>
		<td><input type="text"  name="pram_course_in_charge" class="form-control"></td>
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
