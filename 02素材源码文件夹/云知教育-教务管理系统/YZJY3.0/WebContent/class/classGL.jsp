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
    <link href="../css/bootstrap-table.css" rel="stylesheet">
    <link href="../css/JWindexstyle.css" rel="stylesheet">
    
    <script src="../js/jquery/jquery.min.js"></script>
	<script src="../js/bootstrap/js/bootstrap.js"></script>
	<script src="../js/bootstrap-table/bootstrap-table.js"></script>
	<script src="../js/bootstrap-table/bootstrap-table-zh-CN.js"></script>
	<script src="../js/bootstrap-table/bootstrap-table-export.js"></script>
	<script src="../js/extends/tableExport/jquery.base64.js"></script>
	<script src="../js/extends/tableExport/tableExport.js"></script>
	
</head>
<body>

<div class="col-sm-12">
<!-- Example Pagination -->
	<div class="row">
   <a href="insertclass.jsp" class="btn btn-primary pull-right">添加班级</a>
       <h4>班级管理</h4>
       <div style="padding-bottom:0px;">
		<table id="classTableDiv">
		</table>
	</div>
	</div>                  
 </div>

 <script type="text/javascript">
		$(function () {
			$('#classTableDiv').bootstrapTable({
					//url:"",                      //请求后台的URL（*）
		         method: 'get',
				cache: false,
				height: 400,
				striped: true,
				pagination: true,
				pageSize: 10,
				pageNumber:1,
				pageList: [10, 20, 50, 100, 200, 500],
				search: true,
				showColumns: true,
				showRefresh: true,
				showExport: true,
				//exportTypes: ['csv','txt','xml'],
				search: true,
				clickToSelect: true,
				 columns: [
					{field:"class_id",title:"班级号",align:"center",valign:"middle",sortable:"true"},
					{field:"class_name",title:"班级",align:"center",valign:"middle",sortable:"true"},
					{field:"department",title:"院系",align:"center",valign:"middle",sortable:"true"},
					{field:"teacher",title:"指导老师",align:"center",valign:"middle",sortable:"true"},
					{field:"operate",title:'操作',align: 'center',valign: 'middle',formatter : AddFunctionAlty,}
					],
					data : [
						{"class_id":"jsj001","class_name":"计算机科学与技术1班","department":"计科院","teacher":"张三三","operate":""},
						{"class_id":"jsj002","class_name":"计算机科学与技术2班","department":"计科院","teacher":"李思思","operate":""},
						{"class_id":"jsj003","class_name":"计算机科学与技术3班","department":"计科院","teacher":"张飞扬","operate":""},
						{"class_id":"jsj004","class_name":"计算机科学与技术4班","department":"计科院","teacher":"伍秀品","operate":""},
						{"class_id":"jsj005","class_name":"计算机科学与技术5班","department":"计科院","teacher":"吴越","operate":""},
						{"class_id":"001","class_name":"计161","department":"计科院","teacher":"吴越","operate":""},
						{"class_id":"jsj005","class_name":"计算机科学与技术5班","department":"计科院","teacher":"吴越","operate":""},
						{"class_id":"jsj005","class_name":"计算机科学与技术5班","department":"计科院","teacher":"吴越","operate":""},
						{"class_id":"jsj005","class_name":"计算机科学与技术5班","department":"计科院","teacher":"吴越","operate":""},
						{"class_id":"jsj005","class_name":"计算机科学与技术5班","department":"计科院","teacher":"吴越","operate":""},
						{"class_id":"jsj005","class_name":"计算机科学与技术5班","department":"计科院","teacher":"吴越","operate":""},
						{"class_id":"jsj005","class_name":"计算机科学与技术5班","department":"计科院","teacher":"吴越","operate":""}
						
					],
					onPageChange: function (size, number) {
						//$("#pageSizeInput").val(size);
						//$("#pageNumberInput").val(number);
						
						//var form = $('#tableForm');
						//form.action= '${base}/showReport';
						//form.submit();
	                },
					//onSort: function (name, order) {
	               // },
					//formatShowingRows: function (pageFrom, pageTo, totalRows) {
					//	return '';
	               // },
					//formatRecordsPerPage: function () {
					//	return '';
	              //  },
	                formatNoMatches: function(){
	                	return '无符合条件的记录';
	                }
				});
									
				$(window).resize(function () {
					$('#reportTable').bootstrapTable('classTableDiv');
				});

		});
		
	</script>
	<script>
	
	function AddFunctionAlty(value,row,index){
		
		return[
			'<a href=classDetails.jsp id="TableDetals" class="btn btn-primary btn-xs">查看</a> &nbsp;&nbsp;',
			'<a href=updateclass.jsp type="button" class="btn btn-default btn-xs">编辑</a> &nbsp;&nbsp;',
			'<a href=deleteclass.jsp id="TableDelete" type="button" class="btn btn-danger btn-xs">删除</a>'
			
		].join("")
		
	}
	window.operateEvents={
			"click #TableEditor":function(e,value,row,index){
				
			},
			"click #TableDelete":function(e,value,row,index){
				$(this).parent().parent().remove();
			}
	}
	
	</script>
</body>
</html>