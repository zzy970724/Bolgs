<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
   <title>留言板</title>

		<!-- Bootstrap Core CSS -->
		<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
		<link href="zzy.ico" rel="shortcut icon" />
		
		<!-- Custom CSS -->
		<link rel="stylesheet" href="css/style.css">
		<link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">

		
		<!-- jQuery and Modernizr-->
		<script src="js/jquery-2.1.1.js"></script>
		<!-- Core JavaScript Files -->
		<script src="js/bootstrap.min.js"></script>

		<script type="text/javascript">
			 //1这里需要改 
    var key = "lyb";
	function saveStorage(id) {  

    var data = document.getElementById(id).value; //取值  
    
    var time = new Date().getTime(); 
    //2这里需要改 
    data = key + "_" + data;
    localStorage.setItem(time, data); //保存  
    alert("发表留言！");  
    //localStorage('msg1');  
    
}  
function loadStorage(id) {  
	
	
    var result = '<table class="table" width="800px">';  
    var j = 0;
    
     for (var i = 0; i < localStorage.length; i++)  
    {  
        var key_ = localStorage.key(i);  
        var value = localStorage.getItem(key_); //读取  
        var vals = value.split('_');
        console.log(key + "____");
        console.log(vals);
        
        if (vals[0] != key) {
        	console.log(vals[0]);
        	continue;
        }
        value = vals[1];
        console.log(vals);
        var date = new Date(); 

    
        date.setTime(key_);  
        var datestr =  date.toLocaleString(); //时间 
        result += '<tr   height="45px"><td width="4%" class="info">' +(++j) + '楼 </td><td width="8%" class="info"><img src="images/ava-3.jpeg" class="img-circle"/></td><td width="10%" class="info"><font color="#EEA236">柠檬不萌</font></td><td class="success" width="60%" >' + value + '</td><td width="20%" class="info">' + datestr + '</td></tr>';  
    }  
    result += '</table>';  
    var target = document.getElementById(id);  
    target.innerHTML = result;   
}  
function clearStorage(id) { 
for (var i = 0; i < localStorage.length; i++)  
    {  
        var key_ = localStorage.key(i);  
        var value = localStorage.getItem(key_); //读取  
        var vals = value.split('_');
        console.log(key + "____");
        console.log(vals);
        
        if (vals[0] != key) {
        	console.log(vals[0]);
        	continue;
        }
       localStorage.removeItem(key_);
    }  
   // localStorage.clear();  
    alert("留言删除成功！");  
    loadStorage('msg');  
}  
		</script>
	</head>

	<body>
			<nav id="top" style="background-color: #000000;">
				<div class="container">
					<div class="row">
						<div class="col-md-12 col-md-12">
							<ul class="list-inline top-link link" style="color:white ;">
								<li><a href="index.jsp"><i class="glyphicon glyphicon-home " style="color:white ;"></i><font color="white">&nbsp;  主页</font></a></li>
							</ul>
						</div>
					</div>
				</div>
			</nav>
			
			
						<!--Navigation-->
			<nav id="menu" class="navbar container">
				<div class="navbar-header">
					<button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
					<a class="navbar-brand" href="#">
						<div class="logo"><span>Blogs</span></div>
					</a>
				</div>
				<div class="collapse navbar-collapse navbar-ex1-collapse">
					<ul class="nav navbar-nav">
						<li><a href="index.jsp"><i class="fa fa-cubes"></i> 首页</a></li>
						<li><a href="xqsb.jsp"><i class="fa fa-cubes"></i>心情随笔 </a></li>
						<li><a href="<%=basePath%>ArticleServlet?flag=select"><i class="fa fa-envelope"></i> 回忆录</a></li>
						<li><a href="photo.jsp"><i class="fa fa-cubes"></i>相册</a></li>
						<li><a href="lyb.jsp"><i class="fa fa-envelope"></i> 留言板</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">好友来访<i class="fa fa-arrow-circle-o-down"></i></a>
							<div class="dropdown-menu" style="margin-left: -35px;">
								<div class="dropdown-inner">

									<ul class="list-unstyled">
										<li>
											<a href="archive.html"><img width="60px" height="45px" src="images/ava-1.jpg">花开不落</a>
										</li>
										<li>
											<a href="archive.html"><img width="60px" height="45px" src="images/ava-2.png">柠檬不萌</a>
										</li>
										<li>
											<a href="archive.html"><img width="60px" height="45px" src="images/ava-3.jpeg">君宝宝</a>
										</li>
									</ul>
									<ul class="list-unstyled">
										<li>
											<a href="archive.html"><img width="60px" height="45px" src="images/ava-1.jpg">啦啦</a>
										</li>
										<li>
											<a href="archive.html"><img width="60px" height="45px" src="images/ava-2.png">君宝宝</a>
										</li>
										<li>
											<a href="archive.html"><img width="60px" height="45px" src="images/ava-3.jpeg">君宝宝</a>
										</li>
									</ul>
								</div>
							</div>
						</li>
					</ul>

				</div>
			</nav>
			<div id="page-content" class="index-page container">
				<div class="row">
					<div id="main-content">
						<div class="col-md-9 col-md-offset-1">
							<div class="box">
								<ul class="breadcrumb">
								  <li><a href="index.jsp">首页</a>   <span class="divider"></span></li>
								  <li><a href="xqsb.jsp">留言板</a></li>
								</ul>
								<div  style="background: url('images/title-vimeo.png') repeat-x center center ;margin-bottom: 20px;">
										<h2 style=" font-size: 25px;padding: 0px 8px;background-color: #fff;display: inline-block;margin-left: 15px;color: #333;">留言板</h2>
								</div>
							</div>
							<div class="box" >
								<div class="col-md-2">
								<img src="images/ava-3.jpeg" class="img-circle"/>
								</div>
						        <textarea id="demo" cols="90" rows="6" style="background-color:#D0E9C6;"></textarea><br/><br/>  
						        <div class="col-md-10 col-md-offset-5">
						        <input type="button" class="btn btn-info"  value="发表" onclick="saveStorage('demo');" />   
						        <input type="button" class="btn btn-danger" value="清空" onclick="clearStorage('msg');" />   
						        <input type="button" class="btn btn-success" value="读取" onclick="loadStorage('msg');" />
						        </div>
						        <hr color="red" >  
						        <p id="msg"></p>  
						        
							</div>
						</div>	
						
						</div> 
					</div>
				</div>
			</div>
	</body>