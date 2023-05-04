<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>任务详情</title>
<link rel="shortcut icon" href="favicon.ico">
    <link href="https://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.staticfile.org/font-awesome/4.4.0/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="../css/JWindexstyle.css" rel="stylesheet">
	<style>
		
	</style>
	
</head> 
<body class="fixed-sidebar full-height-layout gray-bg" style="overflow:hidden">
<div class="wrapper">
<!--左侧导航开始-->
    <nav class="navbar-default navbar-static-side" role="navigation">
        
        <div class="sidebar-collapse">
            <ul class="nav" id="side-menu">
            	<li style="padding:2px 5px;">
            	<input type="text" placeholder="搜索题目号" class="form-control">
            	</li>
            	<li  style="padding:2px 5px;">
            	<input type="text" placeholder="搜索知识点" class="form-control">
            	</li>
                <li>
                    <a href="#">
                    	<!-- 需要调用数据库数据获取课程名 -->
                        <span class="nav-label">操作系统</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul class="nav nav-second-level">
                        <li>
                        	<!-- 需要获取课时名 -->
                            <a href="#">课时一<span class="fa arrow"></span></a>
                            <ul class="nav nav-third-level">
                                <li>
                                    <a class="J_menuItem" href="#">知识点一</a>
                                </li>
                                <li>
                                    <a class="J_menuItem" href="#">知识点二</a>
                                </li>
                                <li>
                                    <a class="J_menuItem" href="#">知识点三</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                        	<!-- 需要获取课时名 -->
                            <a href="#">课时二<span class="fa arrow"></span></a>
                            <ul class="nav nav-third-level">
                                <li>
                                    <a class="J_menuItem" href="#">知识点一</a>
                                </li>
                                <li>
                                    <a class="J_menuItem" href="#">知识点二</a>
                                </li>
                                <li>
                                    <a class="J_menuItem" href="#">知识点三</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                        	<!-- 需要获取课时名 -->
                            <a href="#">课时三<span class="fa arrow"></span></a>
                            <ul class="nav nav-third-level">
                                <li>
                                    <a class="J_menuItem" href="#">知识点一</a>
                                </li>
                                <li>
                                    <a class="J_menuItem" href="#">知识点二</a>
                                </li>
                                <li>
                                    <a class="J_menuItem" href="#">知识点三</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#">
                    	<!-- 需要调用数据库数据获取课程名 -->
                        <span class="nav-label">计算机网络</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul class="nav nav-second-level">
                        <li>
                        	<!-- 需要获取课时名 -->
                            <a href="#">课时一<span class="fa arrow"></span></a>
                            <ul class="nav nav-third-level">
                                <li>
                                    <a class="J_menuItem" href="#">知识点一</a>
                                </li>
                                <li>
                                    <a class="J_menuItem" href="#">知识点二</a>
                                </li>
                                <li>
                                    <a class="J_menuItem" href="#">知识点三</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                        	<!-- 需要获取课时名 -->
                            <a href="#">课时二<span class="fa arrow"></span></a>
                            <ul class="nav nav-third-level">
                                <li>
                                    <a class="J_menuItem" href="#">知识点一</a>
                                </li>
                                <li>
                                    <a class="J_menuItem" href="#">知识点二</a>
                                </li>
                                <li>
                                    <a class="J_menuItem" href="#">知识点三</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                        	<!-- 需要获取课时名 -->
                            <a href="#">课时三<span class="fa arrow"></span></a>
                            <ul class="nav nav-third-level">
                                <li>
                                    <a class="J_menuItem" href="#">知识点一</a>
                                </li>
                                <li>
                                    <a class="J_menuItem" href="#">知识点二</a>
                                </li>
                                <li>
                                    <a class="J_menuItem" href="#">知识点三</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>

                
                
                

            </ul>
        </div>
    </nav>
    <!--左侧导航结束-->
    <!-- 右侧题目 -->
    <div id="page-wrapper" class="gray-bg dashbard-1">
    	<div class="row J_mainContent wrapper" id="content-main">
            <iframe class="J_iframe" name="iframe0" width="100%" style="min-height:620px;" src="test.jsp" frameborder="0" data-id="test.jsp" onload="this.height=this.contentWindow.document.documentElement.scrollHeight"></iframe>
     	</div>
     </div>
     <!-- 右侧题目结束 -->
</div>
<script src="https://cdn.staticfile.org/jquery/2.1.4/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="../js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="../js/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script src="../js/plugins/layer/layer.js"></script>
<script src="../js/hplus.js"></script>
<script src="../js/cantabs.js"></script>
<script src="../js/plugins/pace/pace.min.js"></script>
<script src="../js/content.js"></script>
</body>
</html>