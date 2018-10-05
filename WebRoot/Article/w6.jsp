<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
   
    <title>青春不散场</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	
	<!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css"  type="text/css">
    <link href="zzy.ico" rel="shortcut icon"  />	
	
	<!-- Custom CSS -->
    <link rel="stylesheet" href="css/style.css">
	 <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
	
	
	<!-- jQuery and Modernizr-->
	<script src="js/jquery-2.1.1.js"></script>
	<!-- Core JavaScript Files -->  	 
	<script src="js/bootstrap.js" ></script>
    <script src="js/bootstrap.min.js"></script>
    
             <script type="text/javascript">
			 //1这里需要改 
    var key = "w6";
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
    alert("留言全部被成功删除了！");  
    loadStorage('msg6');  
}  
		</script>
  </head>
  
  <body>
    <header>
	<!--Top-->

	<nav id="top" style="background-color: #000000;">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-md-12">
					<ul class="list-inline top-link link" style="color:white ;">
						<li ><a href="index.jsp"><i class="glyphicon glyphicon-home " style="color:white ;"></i><font color="white">&nbsp;  主页</font></a></li>
						<li class="active"><a href="login.jsp" target="_parent"><i class="glyphicon glyphicon-log-in" style="color:white ;"></i><font color="white">&nbsp;  退出</font></a></li>
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
				<li><a href="hyl.jsp"><i class="fa fa-envelope"></i> 回忆录</a></li>
				<li><a href="xqsb.jsp"><i class="fa fa-cubes"></i>心情随笔 </a></li>
				<li><a href="photo.jsp" ><i class="fa fa-cubes"></i>相册</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">好友来访<i class="fa fa-arrow-circle-o-down"></i></a>
					<div class="dropdown-menu" style="margin-left: -35px;">
						<div class="dropdown-inner">
				
							<ul class="list-unstyled">
								<li><a href="archive.html"><img width="60px" height="45px" src= "images/ava-1.jpg">花开不落</a></li>
								<li><a href="archive.html"><img width="60px" height="45px" src= "images/ava-2.png">柠檬不萌</a></li>
								<li><a href="archive.html"><img width="60px" height="45px" src= "images/ava-3.jpeg">君宝宝</a></li>
							</ul>
							<ul class="list-unstyled">
								<li><a href="archive.html"><img width="60px" height="45px" src= "images/ava-1.jpg">啦啦</a></li>
								<li><a href="archive.html"><img width="60px" height="45px" src= "images/ava-2.png">君宝宝</a></li>
								<li><a href="archive.html"><img width="60px" height="45px" src= "images/ava-3.jpeg">君宝宝</a></li>
							</ul>
						</div>
					</div>
				</li>
			</ul>
	
		</div>
	</nav>	
	
	
	
	<div class="featured container">
		<div class="row">
			<div class="col-sm-12">
				<ul class="breadcrumb">
					<li><a href="index.jsp">首页</a>   <span class="divider"></span></li>
					<li><a href="xqsb.jsp">回忆录</a></li>
				</ul>
				<div class="col-sm-7 col-sm-offset-4">
					<h3>"青春不散场"</h3>
				</div>
				<div class="col-sm-7 col-sm-offset-2"> 
					<img alt="青春不散场" src="images/zzy3.jpg">
				</div>
				<br/>
				<br/>
				<div class="col-sm-7 col-sm-offset-2">
				<br>
					<p><font size="3px">有一段时光，缓缓流淌，洗涤着成长路上的迷惘；有一段时光，浅浅翱翔，追逐着心中梦想的方向。青春路上，有你有我。初遇熟识，结伴而行。把旅途中的感动，小心收藏，温暖那些有阴霾的晨光。用一个微笑，流转谦让与善良，柔和那些不明朗的淡漠。春意莫阑珊，微光徐徐暖人心。青春不散场，风雨依旧共徜徉。
					</font></p>
					<div > 
						<img alt="青春不散场" src="images/zzy3_1.jpg">
					</div>
					<br>
					<p><font size="3px">天下没有不散的宴席，转眼间，大学四年的美丽年代就快到了要结束的时候。回首这四年，有过欢乐兴奋也有痛苦悲伤，付出过汗水泪水，也有收获与成就。有人说过，忘记过去就意味着背叛，所以，我们回味过去，为的是未来。
					</font></p>
					<div > 
						<img alt="青春不散场" src="images/zzy3_2.jpg">
					</div>
					<p><font size="3px">毕业后，有些人失望了，有些人失恋了，有些人失踪了。有些人发财，有些人发福，有些人发喜帖。这些事，还会陆续发生，默契的生活轨迹将划下休止，开始截然不同的人生。不奢他日再次聚首，但求不忘各自最初的容颜，毕竟，我们都曾闯入彼此的生命······ 
					</font></p>
					<hr>
				</div>
				<div class="col-md-9 col-md-offset-2">
					<img src="images/ava-3.jpeg" class="img-circle"/>
				</div>
				<textarea id="demo6" cols="90" rows="6" style="background-color:#D0E9C6; margin-left: 200px;" ></textarea><br/><br/>  
				<div class="col-md-10 col-md-offset-6">
				<input type="button" class="btn btn-info"  value="发表" onclick="saveStorage('demo2');" />   
				<input type="button" class="btn btn-danger" value="清空" onclick="clearStorage('msg2');" />   
				<input type="button" class="btn btn-success" value="读取" onclick="loadStorage('msg2');" />
				</div>
				<hr color="red" >  
				<p id="msg6"></p>  
			</div>
		</div>
	</div>
  </body>
</html>
