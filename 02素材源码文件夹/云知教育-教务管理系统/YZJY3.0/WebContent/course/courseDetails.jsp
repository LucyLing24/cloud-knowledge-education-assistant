<%@ page language="java" import="java.util.*"  contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>课程详情</title>
<link href="https://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.staticfile.org/font-awesome/4.4.0/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="../css/bootstrap-table.css" rel="stylesheet">
    <link href="../css/JWindexstyle.css" rel="stylesheet">
    <style>
    	.tab-pane>.nav>li{
    	border:1px solid #999;
    	border-radius:5px;
    	
    	}
    	.tab-pane>.nav>li>a{
    	color:#333;
    	}
    	.tab-pane>.nav>li:hover{
    	border:1px solid #999;
    	border-radius:5px;
    	}
    	.tab-pane>.nav>li:focus{
    	border:1px solid #999;
    	border-radiue:5px 5px 0 0;
    	}
    </style>
    
    <script src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<script src="https://cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="../js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="../js/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script src="../js/plugins/layer/layer.js"></script>
<script src="../js/hplus.js"></script>
<script src="../js/cantabs.js"></script>
<script src="../js/plugins/pace/pace.min.js"></script>
	
</head>
<body class="gray-bg">

<%

			Class.forName("com.mysql.jdbc.Driver");
		    String url="jdbc:mysql://127.0.0.1:3306/jwgl?useUnicode=true&characterEncoding=utf-8";
	        Connection dbCon=DriverManager.getConnection(url,"root","shen");
	        Statement stmt=dbCon.createStatement();
	        
	        
	        session.setAttribute("pram_course_id",request.getParameter("pram_course_id"));
			String seleStr = "SELECT * FROM course where course_id='"+request.getParameter("pram_course_id")+"'";
			ResultSet rs = stmt.executeQuery(seleStr);
			rs.next();
		%>
		
<div class="row">
        <div class="wrapper wrapper-content animated fadeInUp">
            <div class="ibox">
                <div class="ibox-content">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="m-b-md">
                                <a href=updatecourse.jsp?pram_course_id=<%=request.getParameter("pram_course_id") %> class="btn btn-white btn-xs pull-right">编辑课程</a>
                                <h2>高等数学</h2>
                            </div>
                            <dl class="dl-horizontal">
                                <dt>状态：</dt>
                                <dd><span class="label label-primary">进行中</span>
                                </dd>
                            </dl>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-5">
                            <dl class="dl-horizontal">

                                <dt>任务指导老师：</dt>
                                <dd><%=rs.getString("teacher_in_charge")%></dd>
                                <dt>学科号：</dt>
                                <dd name="pram_course_id" ><%=rs.getString("course_id")%></dd>
                                <dt>学科：</dt>
                                <dd><%=rs.getString("course_name")%></dd>
                                
                            </dl>
                        </div>
                        <div class="col-sm-7" id="cluster_info">
                            <dl class="dl-horizontal">

                                <dt>期中考试时间：</dt>
                                <dd><%=rs.getString("midterm_exam_time")%></dd>
                                <dt>期末考试时间：</dt>
                                <dd><%=rs.getString("finterm_exam_time")%></dd>
                                <dt>参与人数：</dt>
                                <dd class="project-people">
                                    120
                                </dd>
                            </dl>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <dl class="dl-horizontal">
                                <dt>当前课程进度</dt>
                                <dd>
                                    <div class="progress progress-striped active m-b-sm">
                                        <div style="width: 60%;" class="progress-bar"></div>
                                    </div>
                                </dd>
                            </dl>
                        </div>
                    </div>
                    <div class="row m-t-sm">
                        <div class="col-sm-12">
                            <div class="panel blank-panel">
                                <div class="panel-heading">
                                    <div class="panel-options">
                                        <ul class="nav nav-tabs">
                                            <li class="active">
                                                <a href="project_detail.html#tab-1" data-toggle="tab">课程内容介绍</a>
                                            </li>
                                            <li class="">
                                                <a href="project_detail.html#tab-2" data-toggle="tab">课时</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>

                                <div class="panel-body">

                                    <div class="tab-content">
                                        <div class="tab-pane active" id="tab-1">
                                            <div class="feed-activity-list">
                                            <!-- 课程介绍详情，课程信息 -->
                                               <p>高等数学，高等数学。。。</p>
                                            </div>

                                        </div>
                                        <!-- 课时表 -->
                                        <div class="tab-pane" id="tab-2">  
                                        <!-- 课时-知识点 菜单 -->                                      
                                    <ul class="nav" id="side-menu">
									<li >
										<a  href="#" >
											<span class="nav-label">1.课时1</span><span class="fa arrow"></span>
										</a>
										<ul class="nav nav-second-level collapse">
											<li><a class="J_menuItem" href="#">1.1知识点1</a></li>
											<li><a class="J_menuItem" href="#">1.2知识点2</a></li>
											<li><a class="J_menuItem" href="#">1.3知识点3</a></li>
										</ul>
											
									</li>
									</ul>
                                        
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<script src="https://cdn.staticfile.org/jquery/2.1.4/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="../js/content.js"></script>
<script>
    $(document).ready(function () {
        $("#loading-example-btn").click(function () {
            btn = $(this);
            simpleLoad(btn, true);
            simpleLoad(btn, false)
        })
    });

    function simpleLoad(btn, state) {
        if (state) {
            btn.children().addClass("fa-spin");
            btn.contents().last().replaceWith(" Loading")
        } else {
            setTimeout(function () {
                btn.children().removeClass("fa-spin");
                btn.contents().last().replaceWith(" Refresh")
            }, 2000)
        }
    };
</script>
<script type="text/javascript"> 
$(document).ready(function() {  
    $('#side-menu>li>a').click(function(){  
        if($(this).siblings('ul').css('display')=='none'){  
            $(this).addClass('collapse in'); 
            $(this).children(".fa").css("transform", "rotate(-90deg)");
            $(this).siblings('ul').slideDown('fast').children('li');  
        }else{  
            $(this).removeClass('collapse');  
            $(this).children(".fa").css("transform", "rotate(0deg)");
            $(this).siblings('ul').slideUp('fast');  
        }  
    })  
});  
</script> 
</body>
</html>