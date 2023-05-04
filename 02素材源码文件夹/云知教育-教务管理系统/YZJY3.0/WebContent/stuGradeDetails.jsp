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
    <link href="css/bootstrap-table.css" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<script src="https://cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<script src="js/bootstrap-table.js"></script>
	<script src="js/bootstrap-table-zh-CN.js"></script>
	<link href="css/JWindexstyle.css" rel="stylesheet">
	
</head>
<body> 
<!-- table -->
<div class="col-sm-12" style="min-height:400px;">
    <div class="row">
    <a href="updatestuGrade.jsp" class="btn btn-primary btn-xs pull-right">添加成绩</a>
        <table id="table" data-toggle="table" class="table" data-query-params="queryParams" data-mobile-responsive="true" data-height="400" data-pagination="true" data-icon-size="outline">
        <thead>
    		<tr>
        		<th>学生学号</th>
        		<th>学科号</th>
        		<th>期中成绩</th>
        		<th>期末成绩</th>
        		<th>总评成绩</th>
        		<th>操作</th>
    		</tr>
    	</thead>


			<%
			String ls1=null,ls2=null;
				ls1="<a href=# target=_self><i class='fa fa-pencil'></i></a>";
				ls2="<a href=#><i class='fa fa-times'></i></a>";
			%>
			<tbody>
			<tr >
				<td>001</td>
				<td>xk001</td>
				<td>98</td>
				<td>89</td>
				<td>95</td>
				<td><%=ls1 %>&nbsp;&nbsp;<%=ls2 %></td>
			</tr>
			
			</tbody>

        </table>
 		
    </div>
</div>
</body>
</html>