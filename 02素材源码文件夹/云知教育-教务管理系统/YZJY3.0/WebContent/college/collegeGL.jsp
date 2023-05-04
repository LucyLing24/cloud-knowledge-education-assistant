<%@ page language="java" import="java.util.*"  contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<!-- Bootstrap -->
    <link href="../css/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.staticfile.org/font-awesome/4.4.0/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <script src="../js/jquery-3.3.1.min.js"></script>
	<script src="../bootstrap/js/bootstrap.min.js"></script>
	<link href="../css/JWindexstyle.css" rel="stylesheet">
	<style>
	ul{
    list-style: none;
	}
	.college-box>li{
	float:left;
	height:150px;
	margin:10px;
	padding:10px;
	border:1px solid #1ab394;
	background:#eee;
	box-shadow: 5px 5px 2px #888888;
	}
	.control{
	margin-top:5px;
	width:100%;
	}
	.control button{
	margin-right:10px;
	margin-left:10px;
	}
	.plus{
	width:100%;
	text-align:center;
	}
	
	</style>
</head>
<body>



<div class="col-sm-12">
<!-- Example Pagination -->
   <div class="row">
   <h4 style="font-size:26px;">课程管理</h4>
   <ul class="college-box">
   	<li class="col-sm-3">
   		<div class="collegeName"><h3>xxx学院</h3></div>
   		<div class="collegeDetails">
   		<ul>
			<li>院长：<span>xxx</span></li>
            <li>学生人数：<span>xxx</span></li>
            <li>教师人数：<span>xxx</span></li>                 
         </ul>
   		</div>
   		<div class="control">
   		<button class="btn btn-primary" onclick="deleteaction();">删除</button>
   		<button class="btn btn-white">修改</button>
   		</div>
   	</li>
   	
   	<li class="col-sm-3">
   		<div class="collegeName"><h3>xxx学院</h3></div>
   		<div class="collegeDetails">
   		<ul>
			<li>院长：<span>xxx</span></li>
            <li>学生人数：<span>xxx</span></li>
            <li>教师人数：<span>xxx</span></li>                 
         </ul>
   		</div>
   		<div class="control">
   		<button class="btn btn-primary">删除</button>
   		<button class="btn btn-white">修改</button>
   		</div>
   	</li>
   	
   	<li class="col-sm-3">
   		<div class="collegeName"><h3>xxx学院</h3></div>
   		<div class="collegeDetails">
   		<ul>
			<li>院长：<span>xxx</span></li>
            <li>学生人数：<span>xxx</span></li>
            <li>教师人数：<span>xxx</span></li>                 
         </ul>
   		</div>
   		<div class="control">
   		<button class="btn btn-primary">删除</button>
   		<button class="btn btn-white">修改</button>
   		</div>
   	</li>
   	
   	<li class="col-sm-3">
   		<a href="#" class="plus">
   		<i class="fa fa-plus" style="font-size:100px;"></i>
   		</a>
   	</li>
   	
   </ul>	 
   </div>      
 </div>
<script>
function deleteaction(){
    confirm("确定删除？");
}
</script>
</body>
</html>