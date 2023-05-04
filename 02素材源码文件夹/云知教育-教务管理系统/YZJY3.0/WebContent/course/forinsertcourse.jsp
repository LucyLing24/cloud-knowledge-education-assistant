<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%  request.setCharacterEncoding("utf-8");//设定从request对象中读取参数的编码方式。  
    Class.forName("com.mysql.jdbc.Driver");
    	String url="jdbc:mysql://127.0.0.1:3306/jwgl?useUnicode=true&characterEncoding=utf-8";
		Connection dbCon=DriverManager.getConnection(url,"root","shen");
		Statement stmt=dbCon.createStatement();  
		
       	String course_id=request.getParameter("pram_course_id"); 
       	String course_name=request.getParameter("pram_course_name");
       	String course_info=request.getParameter("pram_course_info");
       	String class_hour=request.getParameter("pram_class_hour");
       	String teacher_in_charge=request.getParameter("pram_teacher_in_charge");
       	String midterm_exam_time=request.getParameter("pram_midterm_exam_time");
       	String finterm_exam_time=request.getParameter("pram_finterm_exam_time");
       	String credit=request.getParameter("pram_credit");
       	
    	String instsql = "insert into course (course_id,course_name,course_info,class_hour,teacher_in_charge,midterm_exam_time,finterm_exam_time,credit) values('"+course_id+"','"+course_name+"','"+course_info+"','"+class_hour+"','"+teacher_in_charge+"','"+midterm_exam_time+"','"+finterm_exam_time+"','"+credit+"');";	
        stmt.executeUpdate(instsql);
        response.sendRedirect("courseGL.jsp");
       %>    
</body>
</html>