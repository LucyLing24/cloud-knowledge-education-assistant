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

<div class="col-sm-12">
<!-- Example Pagination -->
   <div class="row">
   <a id="insertcourse" href="insertcourse.jsp" class="btn btn-white btn-xs pull-right">添加课程</a>
   
       <h4>课程管理</h4>
       <div style="padding-bottom:0px;">
       
         <table id="table" data-toggle="table" class="table" data-query-params="queryParams" data-mobile-responsive="true" data-height="400" data-pagination="true" data-icon-size="outline" data-search="true">
             <thead>
    		 <tr>
        		<th data-field="id">课程号</th>
        		<th data-field="name">课程</th>
        		<th data-field="info">课程信息</th>
        		<th data-field="hour">课时</th>
        		<th data-field="teacher">指导老师</th>
        		<th data-field="mid-time">期中测试时间</th>
        		<th data-field="fin-time">期末测试时间</th>
        		<th data-field="credit">学分</th>
        		<th data-field="control">操作</th>
    		 </tr>
    		</thead>
    		<%

			Class.forName("com.mysql.jdbc.Driver");
		    String url="jdbc:mysql://127.0.0.1:3306/jwgl?useUnicode=true&characterEncoding=utf-8";
	        Connection dbCon=DriverManager.getConnection(url,"root","shen");
	        Statement stmt=dbCon.createStatement();
	        
			String seleStr = "SELECT * FROM course";
			ResultSet rs = stmt.executeQuery(seleStr);
		%>

			<%
			String ls1=null,ls2=null,ls3=null;
				while (rs.next()) {
				ls1="<a href=updatecourse.jsp?pram_course_id="+rs.getString("course_id")+"><i class='fa fa-pencil'></i></a>";
				ls2="<a href=#?pram_course_id="+rs.getString("course_id")+"><i class='fa fa-times'></i></a>";
				ls3="<a href=courseDetails.jsp?pram_course_id="+rs.getString("course_id")+"><i class='fa fa-search'></i></a>";
			%>
			
			<tbody>
			<tr >
				<td name="pram_course_id" data-field="course_id"><%=rs.getString("course_id")%></td>
				<td data-field="course_name"><%=rs.getString("course_name")%></td>
				<td data-field="course_info"><%=rs.getString("course_info")%></td>
				<td data-field="class_hour"><%=rs.getString("class_hour")%></td>
				<td data-field="teacher_in_charge"><%=rs.getString("teacher_in_charge")%></td>
				<td data-field="midterm_exam_time"><%=rs.getString("midterm_exam_time")%></td>
				<td data-field="finterm_exam_time"><%=rs.getString("finterm_exam_time")%></td>
				<td data-field="credit"><%=rs.getString("credit")%></td>
				<td data-field="control"><%=ls1 %>&nbsp;&nbsp;<%=ls2 %>&nbsp;&nbsp;<%=ls3 %></td>
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
 </div>
 
 
</body>
</html>