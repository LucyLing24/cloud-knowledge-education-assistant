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
		 
       	String student_id=request.getParameter("pram_student_id"); 
       	String name=request.getParameter("pram_name");
       	String age=request.getParameter("pram_age");
       	String sex=request.getParameter("pram_sex");
       	String password=request.getParameter("pram_password");
       	String mobile_phone=request.getParameter("pram_mobile_phone");
       	String in_class_id=request.getParameter("pram_in_class_id");
       	
       	
    	String instsql = "insert into student (student_id,name,age,sex,password,mobile_phone,in_class_id) values('"+student_id+"','"+name+"','"+age+"','"+sex+"','"+password+"','"+mobile_phone+"','"+in_class_id+"');";	
        stmt.execute(instsql);
        response.sendRedirect("studentGL.jsp");
       %>    
</body>
</html>