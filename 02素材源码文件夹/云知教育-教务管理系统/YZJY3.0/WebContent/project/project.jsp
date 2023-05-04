 <%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>

<link rel="shortcut icon" href="favicon.ico">
    <link href="https://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.staticfile.org/font-awesome/4.4.0/css/font-awesome.css?v=4.4.0" rel="stylesheet">

    <link href="https://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/JWindexstyle.css" rel="stylesheet">

</head>
<body class="gray-bg">

<div class="wrapper wrapper-content animated fadeInUp">
    <div class="row">
        <div class="col-sm-12">

            <div class="ibox">
                <div class="ibox-title">
                    <h5>所有项目</h5>
                    <div class="ibox-tools">
                        <a onclick="newproject()" class="btn btn-primary btn-xs">创建新项目</a>
                    </div>
                </div>
                <div class="ibox-content">
                    <div class="row m-b-sm m-t-sm">
                        <div class="col-md-1">
                            <button type="button" id="loading-example-btn" class="btn btn-white btn-sm">
                                <i class="fa fa-refresh"></i> 刷新
                            </button>
                        </div>
                        <div class="col-md-11">
                            <div class="input-group">
                                <input type="text" placeholder="请输入项目名称" class="input-sm form-control">
                                <span class="input-group-btn">
                                        <button type="button" class="btn btn-sm btn-primary"> 搜索</button> </span>
                            </div>
                        </div>
                    </div>

                    <div class="project-list">

                        <table class="table table-hover">
                            <tbody>
                            <tr>
                                <td class="project-status">
                                            <span class="label label-primary">进行中
                                </td>
                                <td class="project-title">
                                    <a href="project_detail.jsp">高数学习</a>
                                    <br/>
                                    <small>创建于 2018.1.1</small>
                                </td>
                                <td class="project-completion">
                                    <small>当前进度： 48%</small>
                                    <div class="progress progress-mini">
                                        <div style="width: 48%;" class="progress-bar"></div>
                                    </div>
                                </td>
                                
                                <td class="project-actions">
                                    <a href="projectDetails.jsp" class="btn btn-white btn-sm"><i class="fa fa-folder"></i>
                                        查看
                                    </a>
                                    <a onclick="updateproject();" class="btn btn-white btn-sm"><i class="fa fa-pencil"></i>
                                        编辑
                                    </a>
                                    <a href="project.jsp#" class="btn btn-white btn-sm"><i class="fa fa-times"></i>
                                        删除
                                    </a>
                                </td>
                            </tr>
                            
                            <tr>
                                <td class="project-status">
                                            <span class="label label-default">已完成
                                </td>
                                <td class="project-title">
                                    <a href="project_detail.jsp">大学英语学习</a>
                                    <br/>
                                    <small>创建于2018.1.1</small>
                                </td>
                                <td class="project-completion">
                                    <small>当前进度： 8%</small>
                                    <div class="progress progress-mini">
                                        <div style="width: 8%;" class="progress-bar"></div>
                                    </div>
                                </td>
                               
                                <td class="project-actions">
                                    <a href="project.jsp#" class="btn btn-white btn-sm"><i class="fa fa-folder"></i>
                                        查看
                                    </a>
                                    <a onclick="updateproject();" class="btn btn-white btn-sm"><i class="fa fa-pencil"></i>
                                        编辑
                                    </a>
                                    <a href="project.jsp#" class="btn btn-white btn-sm"><i class="fa fa-times"></i>
                                        删除
                                    </a>
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
<script src="https://cdn.staticfile.org/jquery/2.1.4/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="../js/content.js"></script>
 <script src="../js/plugins/layer/layer.js"></script>
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
    
    function newproject(){
    	layer.open({
            type: 2,
            title: false,
            closeBtn: 0, //不显示关闭按钮
            shade: [0],
            area: ['340px', '215px'],
            offset: 'auto', //右下角弹出
            time: 2000, //2秒后自动关闭
            shift: 2,
            content: ['../jiazai.html', 'no'], //iframe的url，no代表不显示滚动条
            end: function(){ //此处用于演示
                layer.open({
                    type: 2,
                    title: '添加任务',
                    shadeClose: true,
                    shade: false,
                    maxmin: true, //开启最大化最小化按钮
                    area: ['600px', '500px'],
                    content: 'newProject.jsp'
                });
            }
        });
    }
    
    
    function updateproject(){
    	layer.open({
            type: 2,
            title: false,
            closeBtn: 0, //不显示关闭按钮
            shade: [0],
            area: ['340px', '215px'],
            offset: 'auto', //右下角弹出
            time: 1000, //2秒后自动关闭
            shift: 2,
            content: ['jiazai.html', 'no'], //iframe的url，no代表不显示滚动条
            end: function(){ //此处用于演示
                layer.open({
                    type: 2,
                    title: '添加任务',
                    shadeClose: true,
                    shade: false,
                    maxmin: true, //开启最大化最小化按钮
                    area: ['600px', '500px'],
                    content: 'updateProject.jsp'
                });
            }
        });
    }
</script>

</body>
</html>