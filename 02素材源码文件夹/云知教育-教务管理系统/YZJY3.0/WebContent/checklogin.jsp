<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

</head>
<body>
<%  request.setCharacterEncoding("utf-8");//设定从request对象中读取参数的编码方式。  
    Class.forName("com.mysql.jdbc.Driver");
    	String url="jdbc:mysql://127.0.0.1:3306/jwgl?useUnicode=true&characterEncoding=utf-8";
		Connection dbCon=DriverManager.getConnection(url,"root","shen");
		Statement stmt=dbCon.createStatement();  
		//获取用户学号和姓名
       	String jw_name=request.getParameter("username"); 
       	String jw_password=request.getParameter("password");
       	session.setAttribute("username", jw_name);
 
       	String seleStr="SELECT * FROM administrator Where name ='"+jw_name+"'";
		ResultSet rs=stmt.executeQuery(seleStr);
		 if(rs.next())
		    {
			 if(rs.getString("password").equals(jw_password)){
				 response.sendRedirect("JWindex.jsp");
			 }
		        else{
		            out.print("<script language='javaScript'> alert('密码错误');</script>");
		            response.setHeader("refresh", "0;url=login.html");
		        }
		    }
		    else 
		    {
		        out.print("<script language='javaScript'> alert('账号错误');</script>");
		        response.setHeader("refresh", "0;url=login.html");
		    }
		 
		
		
%>
</body>
</html>