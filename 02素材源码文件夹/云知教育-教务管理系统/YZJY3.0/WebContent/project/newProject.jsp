<%@ page language="java" import="java.util.*"  contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<!-- Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.staticfile.org/font-awesome/4.4.0/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="../css/bootstrap-table.css" rel="stylesheet">
    <link href="../css/JWindexstyle.css" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<script src="https://cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<script src="../js/bootstrap-table.js"></script>
	<script src="../js/bootstrap-table-zh-CN.js"></script>
	
	<style>
	.form-control{
	margin-bottom:10px;
	}
	</style>
</head>
<body>


<div class="col-md-12">
	<form action="" method="get">
    
        <label class="col-sm-3 control-label">任务名称:</label>
        <div class="col-sm-9">
            <input type="text" name="pram_project_name" class="form-control" placeholder="任务名称">
        </div>
   
   
    	<label class="col-sm-3 control-label">任务详情：</label>
		<div class="col-sm-9">
    		<textarea rows="2"  name="pram_project_detail" class="form-control"></textarea>
		</div>
   
    
        <label class="col-sm-3 control-label">任务开始时间:</label>
        <div class="col-sm-9">
            <input type="text" name="pram_begintime" class="form-control" placeholder="任务开始时间">
        </div>

        <label class="col-sm-3 control-label">任务结束时间:</label>
        <div class="col-sm-9">
            <input type="text" name="pram_endtime" class="form-control" placeholder="任务结束时间">
        </div>

        <label class="col-sm-3 control-label">任务审核老师:</label>
        <div class="col-sm-9">
            <input type="text" name="pram_teacher_in_charge" class="form-control" placeholder="任务审核老师">
        </div>

        <label class="col-sm-3 control-label">学分:</label>
        <div class="col-sm-9">
            <input type="text" name="pram_credit" class="form-control" placeholder="学分">
        </div>

        <div class="col-sm-3">
            <input type="submit"  class="btn btn-sm btn-primary" value="提交">
        </div>
    
    </form>
</div>
</body>
</html>