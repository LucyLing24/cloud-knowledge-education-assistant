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
       	String delsql = "delete from student where student_id='"+student_id+"';" ;		
        stmt.executeUpdate(delsql);
        response.sendRedirect("studentGL.jsp"); 
       %>    
  </body>
</html>
