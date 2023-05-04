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

			String seleStr = "SELECT * FROM class where class_id=jsj001";
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
                                <a href=updateclass.jsp?pram_class_id=jsj001 class="btn btn-white btn-xs pull-right">编辑课程</a>
                                <h2>班级名称</h2>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-5">
                            <dl class="dl-horizontal">

                                <dt>班级号：</dt>
                                <dd>jsj001</dd>
                                <dt>班级：</dt>
                                <dd><%=rs.getString("class_name")%></dd>
                                <dt>院系：</dt>
                                <dd><%=rs.getString("in_department_id")%></dd>
                                
                            </dl>
                        </div>
                        <div class="col-sm-7" id="cluster_info">
                            <dl class="dl-horizontal">

                                <dt>指导老师：</dt>
                                <dd><%=rs.getString("teacher_in_charge")%></dd>
                                <dt>班级总人数：</dt>
                                <dd class="project-people">
                                    120
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
                                                <a href="project_detail.html#tab-1" data-toggle="tab">班级课程表</a>
                                            </li>
                                            <li class="">
                                                <a href="project_detail.html#tab-2" data-toggle="tab">班级名单表</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>

                                <div class="panel-body">

                                    <div class="tab-content">
                                        <div class="tab-pane active" id="tab-1">
                                        	<!-- 课表 -->
                                            <table id="table" data-toggle="table" class="table">
             								<thead>
    		 									<tr>
        											<th width=14%>周一</th>
        											<th width=14%>周二</th>
        											<th width=14%>周三</th>       		
        											<th width=14%>周四</th>
        											<th width=14%>周五</th>
        											<th width=14%>周六</th>
        											<th width=14%>周日</th>        											
    		 									</tr>
    										</thead>			
											<tbody>
												<tr>
													<td width=14%></td>
													<td rowspan="2" width=14%>Linux 操作系统 [朱颖 (1-16周) JSJ-301]</td>
													<td width=14%></td>
													<td rowspan="2" width=14%>计算机网络 [顾翔 (1-16周) JX03-306]</td>
													<td rowspan="2" width=14%>计算机组成原理 [顾晖 (1-16周) JX03-206]</td>
													<td width=14%></td>
													<td width=14%></td>
												</tr>
												<tr>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
												</tr>
												<tr>
													<td></td>
													<td></td>
													<td></td>
													<td rowspan="3">JAVA程序设计基础 [蒋峥峥 (1-16周) JX03-206]</td>
													<td rowspan="3">汇编语言程序设计 [鲁松 (1-16周) JX03-111]</td>
													<td></td>
													<td></td>
												</tr>
												<tr>
													<td rowspan="2">体育(四) [体育 (1-18周) ]</td>
													<td rowspan="2">计算机网络 [顾翔 (1-16周) JX03-210]</td>
													<td rowspan="2">计算机组成原理 [顾晖 (1-16周) JX03-311]</td>
													<td></td>
													<td></td>
												</tr>
												<tr>
													<td></td>
													<td></td>
												</tr>
												<tr>
													<td rowspan="2">操作系统 [丁卫平 (1-16周) JX03-211]</td>
													<td rowspan="2">大学英语（四） [梁华 (1-16单周) JSJ-418]</td>
													<td></td>
													<td rowspan="2">操作系统 [丁卫平 (1-16周) JX03-206]</td>
													<td></td>
													<td></td>
													<td></td>
													
												</tr>
												<tr>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
												</tr>
												<tr>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
												</tr>
												<tr>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
												</tr>
												<tr>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													
												</tr>
											</tbody>
										</table>

                                        </div>
                                        
                                        <div class="tab-pane" id="tab-2">  
                                        <!-- 班级名单表 -->
                                        <table id="table" data-toggle="table" class="table" data-query-params="queryParams" data-mobile-responsive="true" data-height="400" data-pagination="true" data-icon-size="outline" data-search="true">
             								<thead>
    		 									<tr>
        											<th>学号</th>
        											<th>姓名</th>
        											<th>性别</th>
        											<th>年龄</th>       		
        											<th>手机号</th>
        											<th>身份证号</th>        											
    		 									</tr>
    										</thead>			
											<tbody>
											</tbody>
											</table>
                                        
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