<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>任务详情</title>
<link href="https://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.staticfile.org/font-awesome/4.4.0/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="css/bootstrap-table.css" rel="stylesheet">
    <link href="css/JWindexstyle.css" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<script src="https://cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

	
</head>
<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">
<div class="row">
<div class="col-sm-12">
<div class="ibox">
<div class="ibox-title">
	<form action="stuAbilityDetails.jsp" method="get" target="iframe">
	<table class="table">	
	<thead>
	<tr> 
		<th>学号:</th>
		<th><input type="text" name="pram_student_id" required></th>
	 
		<th>姓名:</th>
		<th><input type="text" name="pram_name"></th>
	
		<th>指导老师:</th>
		<th><input type="text" name="pram_teacher"></th>
	
		<th>所在班级号:</th>
		<th><input type="text"  name="pram_in_class_id"></th>
	</tr>
	</thead>
	<tr>
		<td align="center" colspan="4">
		<input type="submit" value="查询" id="search" name="B1" class="btn btn-primary btn-xs pull-right" style="padding:0px 20px;font-size:13px;"> </td> 
		<td align="center" colspan="4"><input type="reset" value="重置" name="B2" class="btn btn-primary btn-xs pull-left" style="padding:0px 20px;font-size:13px;"></td>
	</tr>
	</table>	
	</form> 
</div>
<!-- 查询框结束 -->
<div class="ibox-content" style="min-height:400px;" >
    <iframe name="iframe" style="display:none;"  width="100%" height="100%" src="stuAbilityDetails.jsp" frameborder="0" data-id="stuAbilityDetails.jsp" onload="this.height=this.contentWindow.document.documentElement.scrollHeight"></iframe>
</div>
</div>
</div>
</div>
</div>
<script>
$("#search").click(function(){
	  $("iframe").css('display','block');
	});
</script>
</body>
</html>