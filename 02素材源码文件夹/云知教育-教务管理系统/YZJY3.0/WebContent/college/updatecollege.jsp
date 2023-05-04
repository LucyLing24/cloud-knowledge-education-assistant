<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<html>
  <head>
  <link href="../css/JWindexstyle.css" rel="stylesheet">
  </head>
  <body>
 
<form action="forupdateclass.jsp"  method="post">
<table  class="table">	
	<tr>	
    	<td align="center" colspan="2">要修改信息的院系号是：001</td>
	</tr> 
	<tr>   
		<td align="center">原始信息</td><td align="center">修改信息</td>
	</tr>
	<tr> 
		<td>院系:</td>
		<td><input type="text" value="" name="pram_class_name" class="form-control" placeholder="xxx学院"></td>
	</tr>
	<tr> 
		<td>院领导:</td>
		<td><input type="text" value="" name="pram_in_major" class="form-control" placeholder="xxx"></td>
	</tr>
	<tr> 
		<td>院所属教师:</td>
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
