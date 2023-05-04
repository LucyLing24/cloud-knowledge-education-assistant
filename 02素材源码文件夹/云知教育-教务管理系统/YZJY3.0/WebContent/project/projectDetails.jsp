<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>任务详情</title>
<link href="https://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.staticfile.org/font-awesome/4.4.0/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="../css/bootstrap-table.css" rel="stylesheet">
    <link href="../css/JWindexstyle.css" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<script src="https://cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

	
</head> 
<body class="gray-bg">
<div class="row">
        <div class="wrapper wrapper-content animated fadeInUp">
            <div class="ibox">
                <div class="ibox-content">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="m-b-md">
                                <a href="updateProject.jsp" class="btn btn-white btn-xs pull-right">编辑任务</a>
                                <a href="project.jsp" class="btn btn-white btn-xs pull-right">返回</a>
                                <h2>高等数学第一章作业</h2>
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
                                <dd>小明</dd>
                                <dt>参与人数：</dt>
                                <dd>162</dd>
                                <dt>学科：</dt>
                                <dd>高等数学</dd>
                                
                            </dl>
                        </div>
                        <div class="col-sm-7" id="cluster_info">
                            <dl class="dl-horizontal">

                                <dt>任务开始时间：</dt>
                                <dd>2018年 3月7日 22:03</dd>
                                <dt>任务结束时间：</dt>
                                <dd>2018年 5月16日 03:01</dd>
                                <dt>参与人员：</dt>
                                <dd class="project-people">
                                    <a href="project_detail.html">
                                        <img alt="image" class="img-circle" src="http://ozwpnu2pa.bkt.clouddn.com/a3.jpg">
                                    </a>
                                </dd>
                            </dl>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <dl class="dl-horizontal">
                                <dt>当前进度</dt>
                                <dd>
                                    <div class="progress progress-striped active m-b-sm">
                                        <div style="width: 60%;" class="progress-bar"></div>
                                    </div>
                                    <small>当前已完成任务人数比 <strong>60%</strong></small>
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
                                            <li>
                                                <a href="project_detail.html#tab-1" data-toggle="tab">任务交流</a>
                                            </li>
                                            <li class="">
                                                <a href="project_detail.html#tab-2" data-toggle="tab">任务审核</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>

                                <div class="panel-body">

                                    <div class="tab-content">
                                        <div class="tab-pane active" id="tab-1">
                                            <div class="feed-activity-list">
                                                <div class="feed-element">
                                                    <a href="profile.html#" class="pull-left">
                                                        <img alt="image" class="img-circle" src="http://ozwpnu2pa.bkt.clouddn.com/a1.jpg">
                                                    </a>
                                                    <div class="media-body ">
                                                        <small class="pull-right text-navy">1天前</small>
                                                        <strong>奔波儿灞</strong> 关注了 <strong>xxx?</strong>. <br>
                                                        <small class="text-muted">54分钟前 来自 xxx</small>
                                                        
                                                    </div>
                                                </div>

                                                
                                                <div class="feed-element">
                                                    <a href="profile.html#" class="pull-left">
                                                        <img alt="image" class="img-circle" src="http://ozwpnu2pa.bkt.clouddn.com/a4.jpg">
                                                    </a>
                                                    <div class="media-body ">
                                                        <small class="pull-right text-navy">5小时前</small>
                                                        <strong>在水一方Y</strong> 关注了 <strong>那二十年的单身</strong>. <br>
                                                        <small class="text-muted">今天 10:39 xsx</small>
                                                        
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="tab-pane" id="tab-2">

                                            <table class="table table-striped">
                                                <thead>
                                                <tr>
                                                	<th>状态</th>
                                                    <th>学号</th>
                                                    <th>姓名</th>
                                                    <th>结束时间</th>
                                                    <th>得分</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <span class="label label-primary"><i class="fa fa-check"></i> 已完成</span>
                                                    </td>
                                                   
                                                    <td>
                                                        jsj001
                                                    </td>
                                                    <td>
                                                        小白
                                                    </td>
                                                    <td>
                                                        3月11日 12：00
                                                    </td>
                                                     <td>
                                                        90
                                                    </td>

                                                </tr>
                                                


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


</body>
</html>