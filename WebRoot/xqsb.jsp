<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>心情随笔</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
	<link rel="stylesheet"  href="css/xqsb.css">
	<link href="zzy.ico" rel="shortcut icon" />

		<!-- Custom CSS -->
		<link rel="stylesheet" href="css/style.css">
		<link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">

		
		<!-- jQuery and Modernizr-->
		<script src="js/jquery-2.1.1.js"></script>
		<!-- Core JavaScript Files -->
		<script src="js/bootstrap.js"></script>
		<script src="js/bootstrap.min.js"></script>
		
		<script type="text/javascript">
			 //1这里需要改 
    var key = "xq";
	function saveStorage(id) {  

    var data = document.getElementById(id).value; //取值  
    
    var time = new Date().getTime(); 
    //2这里需要改 
    data = key + "_" + data;
    localStorage.setItem(time, data); //保存  
    alert("说给懂的人听！");  
    //localStorage('msg1');  
    
}  
function loadStorage(id) {  
	
	
    var result = '<br>'+'<hr>'+'<div class="table" width="600px">';  
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
        result += '<div   height="45px"><div width="10%" class="info">' +(++j) + '楼 </div><div><div width="10%" class="info"><img src="images/ava-3.jpeg" class="img-circle"/></div><div><dd width="10%" class="info"><font color="#EEA236">柠檬不萌:&nbsp;&nbsp;&nbsp;&nbsp;</font>' + value + '</dd><dd width="20%" class="info">' + datestr + '<span style="float: right;"> <a style="text-decoration:none;" onclick="clearStorage(msgxq)" >删除</a>  </dd></div>'; 
    }  
    result += '</div>'; 
    result += '<hr>'; 
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
    alert("成功删除了！");  
    loadStorage('msgxq');  
}  
function HF(huifu) {
	
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
						<!-- background not working -->
						<div class="col-md-9">
							<div class="box">
								<ul class="breadcrumb">
								  <li><a href="index.jsp">首页</a>   <span class="divider"></span></li>
								  <li><a href="xqsb.jsp">心情随笔</a></li>
								</ul>
								<div  style="background: url('images/title-vimeo.png') repeat-x center center ;margin-bottom: 20px;">
										<h2 style=" font-size: 25px;padding: 0px 8px;background-color: #fff;display: inline-block;margin-left: 15px;color: #333;">心情随笔</h2>
								</div>
							</div>
							<div class="box">
								<div class="col-md-2">
								<img src="images/ava-3.jpeg" class="img-circle"/>
								</div>
						        <textarea id="demo" cols="90" rows="6" style="background-color:#D0E9C6;"></textarea><br/><br/>  
						        <div class="col-md-10 col-md-offset-5">
						        <input type="button" class="btn btn-info"  value="发表" onclick="saveStorage('demo');" />   
						        <input type="button" class="btn btn-success" value="读取" onclick="loadStorage('msgxq');" />
						        </div>
						        <hr color="red" >  
						        <p id="msgxq"></p>  
							</div>
						</div>	
						<div class="col-md-3">
							<div class="box">
					<!---- Start Widget ---->
					<div class="widget wid-gallery">
						<div class="heading"><h4>好友来访</h4></div>
						<div class="content">
							<div class="col-md-4">
								<div class="row">
									<a href="#"><img src="images/14.jpg" /></a>
									<a href="#"><img src="images/15.jpg" /></a>
									<a href="#"><img src="images/20.jpg" /></a>
								</div>
							</div>
							<div class="col-md-4">
								<div class="row">
									<a href="#"><img src="images/16.jpg" /></a>
									<a href="#"><img src="images/17.jpg" /></a>
									<a href="#"><img src="images/21.jpg" /></a>
								</div>
							</div>
							<div class="col-md-4">
								<div class="row">
									<a href="#"><img src="images/18.jpg" /></a>
									<a href="#"><img src="images/19.jpg" /></a>
									<a href="#"><img src="images/14.jpg" /></a>
								</div>
							</div>
						</div>
					</div>
				</div>
					<!---- Start Widget ---->
					<div class="widget wid-tags">
						<div class="heading"><h4>标签</h4></div>
						<div class="content">
							<a href="#" style="color: #FADA1A;">阳光</a>
							<a href="#" style="color: #7DC314;">活泼可爱</a>
							<a href="#" style="color:#A6E1EC;">有男人味</a>
							<a href="#" style="color: #966B20;">吃货</a>
							<a href="#" style="color:#C0A16B;">旅行者</a>
							<a href="#" style="color: red;">篮球爱好者</a>
							<a href="#" style="color: mediumorchid;">游戏爱好者</a>
							<a href="#" style="color: #E4B9B9;">听音乐</a>
							<a href="#" style="color: #E5E5E5;">段子手</a>
							<a href="#" style="color:#FFFF00;">疯狂的人</a>
							<a href="#" style="color:aquamarine;">吉他手</a>
							<a href="#" style="color:cadetblue;">冷幽默</a>
							<a href="#">大男子主义</a>
						</div>
					</div>
					<!---- Start Widget ---->
					<div class="widget wid-comment">
						<div class="heading"><h4>亲密度</h4></div>
						<div class="content">
							<div class="post">
								<a href="single.html">
									<img src="images/ava-1.jpg" class="img-circle"/>
								</a>
								<div class="wrapper">
									<a href="#"><h5>君宝宝</h5></a>
									<ul class="list-inline">
										
										<li><i class="glyphicon glyphicon-heart"></i>&nbsp;99%</li>
									</ul>
								</div>
							</div>
							<div class="post">
								<a href="single.html">
									<img src="images/ava-2.png" class="img-circle"/>
								</a>
								<div class="wrapper">
									<a href="#"><h5>花开不落</h5></a>
									<ul class="list-inline">
										<li><i class="glyphicon glyphicon-heart"></i>&nbsp;90%</li>
									</ul>
								</div>
							</div>
							<div class="post">
								<a href="single.html">
									<img src="images/ava-3.jpeg" class="img-circle"/>
								</a>
								<div class="wrapper">
									<a href="#"><h5>柠檬不萌</h5></a>
									<ul class="list-inline">
										<li><i class="glyphicon glyphicon-heart"></i>&nbsp;79%</li>
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
	</body>

</html>
