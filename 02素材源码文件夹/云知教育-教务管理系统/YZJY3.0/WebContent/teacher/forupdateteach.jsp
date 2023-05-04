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
		
       	String teacher_id=request.getParameter("pram_teacher_id"); 
       	String name=request.getParameter("pram_name");
       	String age=request.getParameter("pram_age");
       	String sex=request.getParameter("pram_sex"); 
       	String job_title=request.getParameter("pram_job_title");
       	String in_department_id=request.getParameter("pram_in_department_id");
       	String class_in_charge=request.getParameter("pram_class_in_charge");
       	String password=request.getParameter("pram_password");
       	String mobile_phone=request.getParameter("pram_mobile_phone");
       	String course_in_charge=request.getParameter("pram_course_in_charge");
       	
       	String updatesql="update teacher set name='"+name+"', age='"+age+"', sex='"+sex+"',password='"+password+"',mobile_phone='"+mobile_phone+"',job_title='"+job_title+"',in_department_id='"+in_department_id+"',class_in_charge='"+class_in_charge+"',course_in_charge='"+course_in_charge+"' where teacher_id='"+teacher_id+"';" ;		
       stmt.executeUpdate(updatesql);
       response.setHeader("refresh", "0;url=teacherGL.jsp");
       %>    
  </body>
</html>
