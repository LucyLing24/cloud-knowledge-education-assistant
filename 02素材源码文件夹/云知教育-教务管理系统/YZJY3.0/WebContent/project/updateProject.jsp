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
    	<td align="center" colspan="2">要修改信息的课程号是：001</td>
	</tr> 
	
	<tr> 
		<td>任务名称:</td>
		<td><input type="text" value="" name="pram_project_name" class="form-control"></td>
	</tr>
	<tr> 
		<td>任务详情：</td>
		<td><textarea rows="2" value="" name="pram_project_detail" class="form-control"></textarea></td>
	</tr>
	<tr> 
		<td>任务开始时间:</td>
		<td><input type="date" value="" name="pram_begintime" class="form-control"></td>
	</tr>
	<tr> 
		<td>任务结束时间:</td>
		<td><input type="date" value="" name="pram_endtime" class="form-control"></td>
	</tr>
	<tr> 
		<td>任务审核老师:</td>
		<td>
		<input type="url" list="url_list" value="" name="pram_teacher_in_charge" class="form-control">
		<datalist id="url_list">
			<option label="张三" value="张三" />
			<option label="李四" value="李四" />
			<option label="程亮" value="程亮" />
		</datalist>
		</td>
	</tr>
    
	<tr> 	
		<td>学分:</td>
		<td><input type="number" value="" max="128" min="24" name="pram_credit" class="form-control"></td>
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