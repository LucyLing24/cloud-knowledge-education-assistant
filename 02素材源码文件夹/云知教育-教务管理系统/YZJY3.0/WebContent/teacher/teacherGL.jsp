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
	
</head>
<body>
<!-- table -->
<div class="col-sm-12">
    <div class="row">
    <a href="insertteach.jsp" class="btn btn-white btn-xs pull-right">添加老师</a>
        <h4>老师管理</h4>
        <table id="table" data-toggle="table" class="table" >
        
        <thead>
    		<tr>
        		<th>老师工号</th>
        		<th>姓名</th>
        		<th>年龄</th>
        		<th>性别</th>
        		<th>手机号</th>
        		<th>职称</th>
        		<th>所在院系</th>
        		<th>指导班级</th>
        		<th>教授课程</th>
        		<th>登陆密码</th>
        		<th>操作</th>
    		</tr>
    	</thead>
        <%

			Class.forName("com.mysql.jdbc.Driver");
		    String url="jdbc:mysql://127.0.0.1:3306/jwgl?useUnicode=true&characterEncoding=utf-8";
	        Connection dbCon=DriverManager.getConnection(url,"root","shen");
	        Statement stmt=dbCon.createStatement();
	        
			String seleStr = "SELECT * FROM teacher";
			ResultSet rs = stmt.executeQuery(seleStr);
		%>
<tbody>
			<%
			String ls1=null,ls2=null;
				while (rs.next()) {
				ls1="<a href=updateteach.jsp?pram_teacher_id="+rs.getString("teacher_id")+" target=_self><i class='fa fa-pencil'></i></a>";
				ls2="<a href=deleteteach.jsp?pram_teacher_id="+rs.getString("teacher_id")+"><i class='fa fa-times'></i></a>";
			%>
			
			<tr >
				<td><%=rs.getString("teacher_id")%></td>
				<td><%=rs.getString("name")%></td>
				<td><%=rs.getString("age")%></td>
				<td><%=rs.getString("sex")%></td>
				<td><%=rs.getString("mobile_phone")%></td>
				<td><%=rs.getString("job_title")%></td>
				<td><%=rs.getString("in_department_id")%></td>
				<td><%=rs.getString("class_in_charge")%></td>
				<td><%=rs.getString("course_in_charge")%></td>
				<td><%=rs.getString("password")%></td>
				<td><%=ls1 %>&nbsp;&nbsp;<%=ls2 %></td>
			</tr>
			<%	} %>
			
			</tbody>
			
		<%
			rs.close();
			stmt.close();
		%>
        </table>
 		
    </div>
</div>
</body>
</html>