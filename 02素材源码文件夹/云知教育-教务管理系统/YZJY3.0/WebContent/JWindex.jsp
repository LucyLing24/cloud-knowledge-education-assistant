<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <title>云知教育 教务管理系统</title>

    <link rel="shortcut icon" href="favicon.ico">
    <link href="https://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.staticfile.org/font-awesome/4.4.0/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="css/JWindexstyle.css" rel="stylesheet">
</head>

<body class="fixed-sidebar full-height-layout gray-bg" style="overflow:hidden">
<div id="wrapper">
    <!--左侧导航开始-->
    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="nav-close"><i class="fa fa-times-circle"></i>
        </div>
        <div class="sidebar-collapse">
            <ul class="nav" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element">
                        <span><img alt="image" class="img-circle" src="http://ozwpnu2pa.bkt.clouddn.com/profile_small.jpg"/></span>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <span class="clear">
                                <span class="text-muted text-xs block"><strong class="font-bold"><%=session.getAttribute("username") %></strong><b class="caret"></b></span>
                                </span>
                        </a>
                        <ul class="dropdown-menu animated fadeInRight m-t-xs">

                            <li>
                                <a class="J_menuItem" href="updatePsd.jsp" data-index="1">修改密码</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="login.html">安全退出</a>
                            </li>
                        </ul>
                    </div>
                    <div class="logo-element">云知
                    </div>
                </li>
                <li>
                    <a href="main-r.html" data-id="main-r.html" class="J_menuItem" data-index="0">
                        <i class="fa fa-home"></i> <span class="nav-label">主页</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa fa-bar-chart-o"></i> <span class="nav-label">数据分析</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a class="J_menuItem" href="stuGrade.jsp" >学生成绩查询</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="stuAbility.jsp" >学生能力档案</a>
                        </li>
                        
                        
                    </ul>
                </li>

                <li>
                    <a href="project/project.jsp" data-id="project/project.jsp" class="J_menuItem">
                        <i class="fa fa-tasks"></i> <span class="nav-label">任务管理</span>
                    </a>
                </li>
                <li>
                    <a href="testbase/testbaseGL.jsp" data-id="testbase/testbaseGL.jsp" class="J_menuItem">
                        <i class="fa fa-archive"></i><span class="nav-label">题库管理</span></a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-edit"></i>
                        <span class="nav-label">系统管理</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a class="J_menuItem" href="college/collegeGL.jsp" date-index="9">院系管理</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="class/classGL.jsp">班级管理</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="teacher/teacherGL.jsp">教师管理</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="student/studentGL.jsp">学生管理</a>
                        </li>
                        <li>
							<a class="J_menuItem" href="course/courseGL.jsp">课程管理</a>                              
                        </li>                                                
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-desktop"></i>
                        <span class="nav-label">门户管理</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a class="J_menuItem" href="JWindex.jsp#">轮播图管理</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="JWindex.jsp#">院校资讯管理</a>
                        </li>
                    </ul>
                </li>
                
                

            </ul>
        </div>
    </nav>
    <!--左侧导航结束-->
    <!--右侧部分开始-->
    <div id="page-wrapper" class="gray-bg dashbard-1">
        <div class="row border-bottom">
            <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i>
                    </a>
                    <h3 class="navbar-form-custom">云知教育教务管理系统</h3>
                </div>
                <ul class="nav navbar-top-links navbar-right">
                    <li class="dropdown">
                        <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                            <i class="fa fa-envelope"></i> <span class="label label-warning">16</span>
                        </a>
                        <ul class="dropdown-menu dropdown-messages">
                            <li class="m-t-xs">
                                <div class="dropdown-messages-box">
                                    <img alt="image" class="img-circle" src="http://ozwpnu2pa.bkt.clouddn.com/a7.jpg">
                                    <div class="media-body">
                                        <small class="pull-right">46小时前</small>
                                        <strong>同事1</strong>你好！你好！您好！ <br>
                                        <small class="text-muted">2018.3.14</small>
                                    </div>
                                </div>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <div class="dropdown-messages-box">
                                    <img alt="image" class="img-circle" src="http://ozwpnu2pa.bkt.clouddn.com/a4.jpg">
                                    <div class="media-body ">
                                        <small class="pull-right text-navy">25小时前</small>
                                        <strong>同事2</strong> 1212123123123 <br>
                                        <small class="text-muted">昨天</small>
                                    </div>
                                </div>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <div class="text-center link-block">
                                    <a class="J_menuItem" href="mailbox.html">
                                        <i class="fa fa-envelope"></i> <strong> 查看所有消息</strong>
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                            <i class="fa fa-bell"></i> <span class="label label-primary">8</span>
                        </a>
                        <ul class="dropdown-menu dropdown-alerts">
                            <li>
                                <a href="mailbox.html">
                                    <div>
                                        <i class="fa fa-envelope fa-fw"></i> 您有16条未读消息
                                        <span class="pull-right text-muted small">4分钟前</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="profile.html">
                                    <div>
                                        <i class="fa fa-qq fa-fw"></i> 3条新回复 <span class="pull-right text-muted small">12分钟钱</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <div class="text-center link-block">
                                    <a class="J_menuItem" href="notifications.html">
                                        <strong>查看所有 </strong> <i class="fa fa-angle-right"></i>
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </li>
 
                </ul>
            </nav>
        </div>
        <div class="row content-tabs">
            <button class="roll-nav roll-left J_tabLeft"><i class="fa fa-backward"></i>
            </button>
            <nav class="page-tabs J_menuTabs">
                <div class="page-tabs-content" id="page-tabs-content">
                    <a href="javascript:;" class="active J_menuTab" data-id="main-r.html">首页</a>
                </div>
            </nav>
            <button class="roll-nav roll-right J_tabRight"><i class="fa fa-forward"></i>
            </button>
            <div class="btn-group roll-nav roll-right">
                <button class="dropdown J_tabClose" data-toggle="dropdown">关闭操作<span class="caret"></span>

                </button>
                <ul role="menu" class="dropdown-menu dropdown-menu-right">
                    <li class="J_tabShowActive">
                        <a>定位当前选项卡</a>
                    </li>
                    <li class="divider"></li>
                    <li class="J_tabCloseAll">
                        <a>关闭全部选项卡</a>
                    </li>
                    <li class="J_tabCloseOther">
                        <a>关闭其他选项卡</a>
                    </li>
                </ul>
            </div>
            <a href="login.html" class="roll-nav roll-right J_tabExit"><i class="fa fa fa-sign-out"></i> 退出</a>
        </div>
        <div class="row J_mainContent" id="content-main">
            <iframe class="J_iframe" name="iframe0" width="100%" height="100%" src="main-r.html" frameborder="0" data-id="main-r.html" seamless></iframe>
        </div>
        <div class="footer">
            <div class="pull-right">&copy; 2018
                <a href="http://www.baidu.com" target="_blank">xxxx</a>
            </div>
        </div>
    </div>
    <!--右侧部分结束-->
    
   
</div>
<script src="https://cdn.staticfile.org/jquery/2.1.4/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="js/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script src="js/plugins/layer/layer.js"></script>
<script src="js/hplus.js"></script>
<script src="js/cantabs.js"></script>
<script src="js/plugins/pace/pace.min.js"></script>
</body>

</html>
