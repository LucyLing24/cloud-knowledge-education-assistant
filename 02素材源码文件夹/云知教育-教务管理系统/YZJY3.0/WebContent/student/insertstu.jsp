<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<html>
  <head>
     <title>添加记录</title> 
    <link href="../css/JWindexstyle.css" rel="stylesheet">
  </head>
  <body>
<form action="forinsertstu.jsp"  method="post" style="margin-left:20px;margin-top:20px;width:400px;">
<div style="width:400px;"><h3 style="text-align:center;">添 加 学 生</h3></div>
<table  class="table" style="width:400px;">	
	
	<tr> 
		<td>学号（登录账号）:</td>
		<td><input type="text" name="pram_student_id"  class="form-control"></td>
	</tr>
	<tr> 
		<td>姓名:</td>
		<td><input type="text" name="pram_name" class="form-control"></td>
	</tr>
	<tr> 
		<td>年龄:</td>
		<td><input type="num" name="pram_age" class="form-control"></td>
	</tr>
	<tr> 
		<td>性别:</td>
		<td><input type="radio"  name="pram_sex" value="male" checked>男 &nbsp;&nbsp;<input type="radio" name="pram_sex" value="female">女</td>
	</tr>
	<tr> 
		<td>登录密码:</td>
		<td><input type="password" name="pram_password" class="form-control"></td>
	</tr>
	<tr> 
		<td>手机号:</td>
		<td><input type="tel" name="pram_mobile_phone" class="form-control"></td>
	</tr>
    <tr> 	
		<td>所在班级号:</td>
		<td><input type="text"  name="pram_in_class_id" class="form-control"></td>
	</tr>
	<tr>
		<td align="center" colspan="2">
		<input type="submit" value="提交" name="B1" class="btn btn-primary btn-xs" style="padding:10px 20px;">  
		</td>
	</tr>
</table>

</form>	
 </body>
</html>
