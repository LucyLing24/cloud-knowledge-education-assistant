<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<html>
  <head>
     <title>添加记录</title>
     <link href="../css/JWindexstyle.css" rel="stylesheet">
     <style>
     .table tr{
     margin-bottom:20px;
     }
      .table tr td{
       width:220px;
      }
      
     </style>
  </head>
  <body>
<form action="forinsertclass.jsp"  method="post">
<table class="table">	
	<tr> 
		<td>班级号:</td>
		<td><input type="text" name="pram_course_id" class="form-control"></td>
	</tr>
	<tr> 
		<td >班级:</td>
		<td ><input type="text" name="pram_course_name" class="form-control"></td>
	</tr>
	<tr> 
		<td>院系:</td>
		<td><input type="text" name="pram_course_info" class="form-control"></td>
	</tr>
	<tr> 
		<td>指导老师:</td>
		<td><input type="text" name="pram_teacher_in_charge" class="form-control"></td>
	</tr>
	<tr>
		<td align="center" colspan="2">
		<button id="submit" value="提交" name="B1"  class="btn btn-primary btn-xs" style="padding:5px 15px;">提交</button>  
		<input type="reset" value="重置" name="B2"  class="btn btn-white btn-xs" style="padding:5px 15px;"></td>
	</tr>
</table>

</form>	

 </body>
</html>
