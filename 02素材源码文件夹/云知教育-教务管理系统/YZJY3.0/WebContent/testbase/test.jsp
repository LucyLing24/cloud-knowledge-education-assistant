<%@ page language="java" import="java.util.*"  contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.sql.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="https://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.staticfile.org/font-awesome/4.4.0/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<script src="http://code.jquery.com/jquery-3.3.1.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="../js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="../js/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script src="../js/plugins/layer/layer.js"></script>
<script src="../js/plugins/pace/pace.min.js"></script>
 
<title>知识点-题目</title>
<link href="https://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.staticfile.org/font-awesome/4.4.0/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="../css/bootstrap-table.css" rel="stylesheet">
    <link href="../css/JWindexstyle.css" rel="stylesheet">
    <style>
    	.testbox{
    	width:88%;
    	margin:0 auto;
    	margin-bottom:10px;
    	border:2px solid #999;
    	border-radius:5px;
    	padding:10px 15px;
    	
    	}
    	.testdetails{
    	font-size:20px;
    	
    	}
    	.testchoice span{
    		padding:5px 40px 5px 10px
    	}
    	.testcontrol{
    	float:right;
    	}
    	.testanswer{
    	margin-top:10px;
    	border-top:2px dotted #999;
    	}
    	.testanswer>div{
    	margin-top:15px;
    	}
    	.show{
    	display:block;
    	}
    	.hide{
    	display:none;
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


		
<div class="row">
   <div class="wrapper wrapper-content animated fadeInUp">
       <div class="ibox">
          <div class="ibox-content">
          	<div class="testbox">
          		<p class="testdetails">1.在该位置显示题目详细内容和要求</p>
          		<div class="testchoice">
          		<span>A.选项一</span>
          		<span>B.选项二</span>
          		<span>C.选项三</span>
          		<span>D.选项四</span>
          		</div>
          		<div class="testcontrol">
          			<button class="btn btn-white" onclick="updatequestion()">修改</button>
          			<button class="btn btn-white" onclick="deletequestion()">删除</button>
          		</div>
          		<div class="clear" style="clear:both;"></div>
          		<div class="testanswer">
          			<div class="answer">
          			<span class="btn btn-primary">答案</span>
          			<span>answer;answer;answer;answer;answer;</span>
          			</div>
          			<div class="analysis">
          			<span class="btn btn-primary">解析</span>
          			<span>analysis;analysis;analysis;analysis;analysis;</span>
          			</div>
          		</div>
          	</div>
          </div>
       </div>
    </div>
</div>
<script>
function updatequestion(){
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
                title: '修改题目',
                shadeClose: true,
                shade: false,
                maxmin: true, //开启最大化最小化按钮
                area: ['600px', '500px'],
                content: 'updatetest.jsp'
            });
        }
    });
}

</script>

</body>
</html>
