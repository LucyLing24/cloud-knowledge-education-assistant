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
		
       	String student_id=request.getParameter("pram_student_id"); 
       	String name=request.getParameter("pram_name");
       	String age=request.getParameter("pram_age");
       	String sex=request.getParameter("pram_sex");
       	String password=request.getParameter("pram_password");
       	String mobile_phone=request.getParameter("pram_mobile_phone");
       	String in_class_id=request.getParameter("pram_in_class_id");
       	
       	String updatesql="update student set name='"+name+"', age='"+age+"', sex='"+sex+"',password='"+password+"',mobile_phone='"+mobile_phone+"',in_class_id='"+in_class_id+"' where student_id='"+student_id+"';" ;		
       stmt.executeUpdate(updatesql);
       response.setHeader("refresh", "0;url=studentGL.jsp");
       %>    
  </body>
</html>
