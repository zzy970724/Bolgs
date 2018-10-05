<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
   
    <title>火影忍者，火之意志</title>
    
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
    var key = "w11";
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
    loadStorage('msg11');  
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
					<h3>"火影忍者，火之意志"</h3>
				</div>
				<div class="col-sm-7 col-sm-offset-2"> 
					<img alt="火影忍者，火之意志" src="images/photo1.jpg">
				</div>
				<br/>
				<br/>
				<div class="col-sm-7 col-sm-offset-2">
				<br>
					<p><font size="3px">人生在世只有一次，不必勉强选择自己不喜欢的路，随性而生或随性而死都没关系，不过，无论选择哪条路，都不要忘记保护自己所珍惜的人。
只要有树叶飞舞的地方就会有火在燃烧，那火光会照耀着村子，然后新的树叶会再次萌芽。 人在为了保护最重要的人的时候，会变得非常坚强。
					</font></p>
					<div > 
						<img alt="火影忍者，火之意志" src="images/photo1_1.jpg">
					</div>
					<br>
					<p><font size="3px">拥有的时候不知道珍惜，直到我们失去的时候才追悔莫及，仙人给了我这样的诠释...只有你的死亡，才是你生命中绽放最后的、最美丽的光辉才能诠释英雄豪杰的概念、才能在你的豪杰物语上终结完美也只有死亡，才使得你的离去，宛若天空中绽放的焰火，灿烂、夺目...英雄豪杰的名义，并不是从死亡终结，而是一个新的开始。你的精神，会继续的传承下去，不曾磨灭，必将和火影岩上的历代火影一样的不朽。就算是终究归于大海，就算是流露出的万般无奈与不舍..
					</font></p>
					<div > 
						<img alt="火影忍者，火之意志" src="images/photo1_2.jpeg">
					</div>
					<br>
					<p><font size="3px">“以前的我就只会哭，做什么都是早早就放弃……好几次都想就这样放弃认命算了……可是这样的我……却被鸣人君带上了正确的道路。总是在背后追赶着鸣人君……想追上了之后……能在什么时候一起散散步……总是想待在鸣人君的身边……。是鸣人君改变了我……鸣人君的笑容拯救了我……所以为了保护鸣人君，就算死我也不害怕……因为我，最喜欢鸣人君了”······ 
					</font></p>
				</div>
				<div class="col-md-9 col-md-offset-2">
					<img src="images/ava-3.jpeg" class="img-circle"/>
				</div>
				<textarea id="demo11" cols="90" rows="6" style="background-color:#D0E9C6; margin-left: 200px;" ></textarea><br/><br/>  
				<div class="col-md-10 col-md-offset-6">
				<input type="button" class="btn btn-info"  value="发表" onclick="saveStorage('demo2');" />   
				<input type="button" class="btn btn-danger" value="清空" onclick="clearStorage('msg2');" />   
				<input type="button" class="btn btn-success" value="读取" onclick="loadStorage('msg2');" />
				</div>
				<hr color="red" >  
				<p id="msg11"></p>  
			</div>
		</div>
	</div>
  </body>
</html>