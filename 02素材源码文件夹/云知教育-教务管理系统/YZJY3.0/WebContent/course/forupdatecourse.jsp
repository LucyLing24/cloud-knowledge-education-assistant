<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<html>
  <head>
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
       	String credit=request.getParameter("credit");
       	
       	String updatesql="update course set course_name='"+course_name+"', course_info='"+course_info+"', class_hour='"+class_hour+"',teacher_in_charge='"+teacher_in_charge+"',midterm_exam_time='"+midterm_exam_time+"',finterm_exam_time='"+finterm_exam_time+"',credit='"+credit+"' where course_id='"+course_id+"';" ;		
       stmt.executeUpdate(updatesql);
       response.setHeader("refresh","0;url=courseGL.jsp");
       %>    
  </body>
</html>
