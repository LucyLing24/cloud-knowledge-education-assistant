<%@ page language="java" import="java.util.*"  contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link href="https://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.staticfile.org/font-awesome/4.4.0/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="../css/bootstrap-table.css" rel="stylesheet">
    <link href="../css/JWindexstyle.css" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<script src="https://cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<script src="../js/bootstrap-table.js"></script>
	<script src="../js/bootstrap-table-zh-CN.js"></script>
</head>
<body>
 

<div class="col-md-12">
	<form action=""  method="post">
<table  class="table">	
	<tr>	
    	<td align="center" colspan="2">要修改信息的题号是：001</td>
	</tr> 
	
	<tr> 
		<td>题目内容:</td>
		<td><input type="text" value="" name="pram_question" class="form-control"></td>
	</tr>

	<tr> 
		<td>题目选项A：</td>
		<td><input type="text" value="" name="pram_answerA" class="form-control"></td>
	</tr>
	<tr> 
		<td>题目选项B：</td>
		<td><input type="text" value="" name="pram_B" class="form-control"></td>
	</tr>
	<tr> 
		<td>题目选项C：</td>
		<td><input type="text" value="" name="pram_C" class="form-control"></td>
	</tr>
	<tr> 
		<td>题目选项D：</td>
		<td><input type="text" value="" name="pram_D" class="form-control"></td>
	</tr>
	
    
	<tr> 	
		<td>答案:</td>
		<td><textarea rows="2" value="" name="pram_answer" class="form-control"></textarea></td>
	</tr>
	<tr> 	
		<td>解析:</td>
		<td><textarea rows="2" value="" name="pram_analysis" class="form-control"></textarea></td>
	</tr>
	<tr>
		<td align="center" colspan="2">
		<input type="submit"  class="btn btn-sm btn-primary" value="提交" name="B1">  
		<input type="reset"  class="btn btn-sm btn-primary" value="重置" name="B2"></td>
	</tr>
</table>
</form>	
</div>
</body>
</html>