<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>修改密码</title>
<!-- Bootstrap -->
	<link href="https://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.staticfile.org/jquery/2.1.4/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
     <link href="css/JWindexstyle.css" rel="stylesheet">
</head>
<body class="gray-bg"> 
<% 	
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://127.0.0.1:3306/jwgl?useUnicode=true&characterEncoding=utf-8";
		Connection dbCon=DriverManager.getConnection(url,"root","shen");
		Statement stmt=dbCon.createStatement();
		String seleStr="SELECT * FROM administrator  where name='"+request.getParameter("username")+"'";
        ResultSet rs=stmt.executeQuery(seleStr);
        rs.next();
        session.setAttribute("password",request.getParameter(""));
%>
<div class="wrapper wrapper-content">
    <div class="row animated fadeInRight">
        <div class="col-sm-10">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>个人资料</h5>
                </div>
                <div>
                    <div class="ibox-content profile-content">
                        <div class="row">
                            <div class="col-sm-4">                               
                                <h5><strong>用户名：</strong> <% %></h5>
                            </div>
                            <div class="col-sm-4">                              
                                <h5><strong>年龄：</strong> <% %></h5>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-4">                               
                                <h5><strong>手机号：</strong> <% %></h5>
                            </div>
                           
                            <div class="col-sm-4">
                                <h5><strong>性别：</strong> <% %></h5>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="wrapper">
    <div class="row animated fadeInRight">
        <div class="col-sm-10">
            <div class="ibox float-e-margins">
            	<div class="ibox-title">
                    <h5>修改密码</h5>
                </div>
                
                <div  class="ibox-content profile-content">
            	<form action="" method="post" class="form-horizontal" role="form">
  					<div class="form-group">
    					<label for="firstname" class="col-sm-2 control-label">新密码</label>
    					<div class="col-sm-3">
      						<input type="password" name="newPsd" class="form-control" id="newPsd" placeholder="请输入新密码" required>
    					</div>
  					</div>
  					<div class="form-group">
    					<label for="lastname" class="col-sm-2 control-label">确认密码</label>
    					<div class="col-sm-3">
      						<input type="password" name="comfirm" class="form-control" id="comfirm" placeholder="请确认密码" required>
    					</div>
  					</div>
  					
  					<div class="form-group">
    					<div class="col-sm-offset-2 col-sm-10">
      						<button type="submit" onclick="return check()" class="btn btn-primary">确认修改</button>
    					</div>
  					</div>
				</form>
				</div>
            </div>
        </div>
    </div>
</div>




<script type="text/javascript">
function check(){
	var pd1=document.getElementById("newPsd").value;
	var pd2=document.getElementById("comfirm").value;
	if (pd1!=pd2) 
	{
		alert("两次密码不一致！");
		return false;
		}
		return true;
}

</script>
</body>
</html>