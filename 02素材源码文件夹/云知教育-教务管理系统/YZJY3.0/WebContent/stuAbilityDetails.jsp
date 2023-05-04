 <%@ page language="java" import="java.util.*"  contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<!-- Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.staticfile.org/font-awesome/4.4.0/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="css/bootstrap-table.css" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<script src="https://cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<script src="js/bootstrap-table.js"></script>
	<script src="js/bootstrap-table-zh-CN.js"></script>
	<link href="css/JWindexstyle.css" rel="stylesheet">
	<style>
		.dl-horizontal dd, .dl-horizontal dt{
			margin-bottom:10px;
		}
	</style>
</head>
<body>


<!--  where student_id='"+request.getParameter("pram_student_id")+"' -->
<!-- table -->
<div class="col-sm-12" style="min-height:400px;">
    <div class="row">
         <div class="m-b-md"> 
             <h2>学生能力表</h2>
          </div>
    <div class="row" style="height:400px;">
        <div class="col-sm-5" style="height:100%;">
            <dl class="dl-horizontal">
                            	<dt>头像：</dt>
								<dd class="project-people">
                                    <img alt="image" class="img-circle" src="http://ozwpnu2pa.bkt.clouddn.com/a3.jpg">                                   
                                </dd>
                                <dt>学生学号：</dt>
                                <dd>001</dd>
                                <dt>姓名：</dt>
                                <dd>小明</dd>
                                <dt>性别：</dt>
                                <dd>女</dd>
                                <dt>身份证号：</dt>
                                <dd>3201493475839299</dd>
                                <dt>手机号：</dt>
                                <dd>1827384732</dd>
            </dl>
       </div>
       <div class="col-sm-7" id="cluster_info"  style="height:100%;">
         <!-- 学生能力雷达图 -->
         <div id="container" style="height: 100%"></div>                   
                            
       </div>
    </div>
    <a href="updatestuGrade.jsp" class="btn btn-primary btn-xs pull-right">添加成绩</a>
        <table id="table" data-toggle="table" class="table" data-query-params="queryParams" data-mobile-responsive="true" data-pagination="true" data-icon-size="outline">
        <thead>
    		<tr>
        		<th>学生学号</th>
        		<th>学科</th>
        		<th>期中成绩</th>
        		<th>期末成绩</th>
        		<th>总评成绩</th>
        		<th>操作</th>
    		</tr>
    	</thead>
        
			<%
			String ls1=null,ls2=null;
				ls1="<a href=stuGrade.jsp target=_self><i class='fa fa-pencil'></i></a>";
				ls2="<a href=#><i class='fa fa-times'></i></a>";
			%>
			<tbody>
			<tr >
				<td>001</td>
				<td>高等数学</td>
				<td>80</td>
				<td>90</td>
				<td>87</td>
				<td><%=ls1 %>&nbsp;&nbsp;<%=ls2 %></td>
			</tr>
			<tr >
				<td>001</td>
				<td>大学英语</td>
				<td>76</td>
				<td>93</td>
				<td>83</td>
				<td><%=ls1 %>&nbsp;&nbsp;<%=ls2 %></td>
			</tr>
			<tr >
				<td>001</td>
				<td>计算机网络</td>
				<td>89</td>
				<td>86</td>
				<td>88</td>
				<td><%=ls1 %>&nbsp;&nbsp;<%=ls2 %></td>
			</tr>
			<tr >
				<td>001</td>
				<td>操作系统</td>
				<td>57</td>
				<td>89</td>
				<td>76</td>
				<td><%=ls1 %>&nbsp;&nbsp;<%=ls2 %></td>
			</tr>
			<tr >
				<td>001</td>
				<td>c++编程</td>
				<td>66</td>
				<td>88</td>
				<td>87</td>
				<td><%=ls1 %>&nbsp;&nbsp;<%=ls2 %></td>
			</tr>
			<tr >
				<td>001</td>
				<td>java编程</td>
				<td>86</td>
				<td>92</td>
				<td>87</td>
				<td><%=ls1 %>&nbsp;&nbsp;<%=ls2 %></td>
			</tr>
			</tbody>
        </table>    
    </div>
</div>
		<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/echarts.min.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-gl/echarts-gl.min.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-stat/ecStat.min.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/dataTool.min.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/china.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/world.js"></script>
       <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=ZUONbpqGBsYGXNIYHicvbAbM"></script>      
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/bmap.min.js"></script>      
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/simplex.js"></script>
       

<script type="text/javascript">

var dom = document.getElementById("container");

var myChart = echarts.init(dom);

var app = {};

option = null;

option = {
    
    tooltip: {},
    legend: {
        data: ['预算分配（Allocated Budget）', '实际开销（Actual Spending）']
    },
    radar: {
        // shape: 'circle',
        name: {
            textStyle: {
                color: '#fff',
                backgroundColor: '#999',
                borderRadius: 3,
                padding: [3, 5]
           }
        },
        indicator: [
           { name: '高等数学', max: 100},
           { name: '大学英语', max: 100},
           { name: '计算机网络', max: 100},
           { name: '操作系统', max: 100},
           { name: 'c++编程', max: 100},
           { name: 'java编程', max: 100}
        ]
    },
    series: [{
        name: '课上与线上(onclass And online)',
        type: 'radar',
        // areaStyle: {normal: {}},
        data : [
            {
                value : [80, 76, 89, 57, 66, 86],
                name : '课上'
            },
             {
                value : [90, 93, 86, 89, 88, 92],
                name : '线上'
            }
        ]
    }]
};;
if (option && typeof option === "object") {
    myChart.setOption(option, true);
}
       </script>

</body>
</html>