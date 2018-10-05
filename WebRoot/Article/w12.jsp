<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>多啦A梦伴我前行</title>
    
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
    var key = "w12";
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
    loadStorage('msg12');  
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
					<h3>"多啦爱梦伴我前行"</h3>
				</div>
				<div class="col-sm-7 col-sm-offset-2"> 
					<img alt="多啦爱梦伴我前行" src="images/photo2.jpg">
				</div>
				<br/>
				<br/>
				<div class="col-sm-7 col-sm-offset-2">
				<br>
					<p><font size="3px">命运遮住了我的眼睛 ，长夜笼罩着我的心灵 ，我摸索在这缤纷的世界。几多苦雨，几多寒风 。脚下一条无障碍通道 ，点燃心中破雾的明灯，我从此纵横广阔的天地。 路有多远我能前行，一米阳光绽放真情，万千关爱恰似好友亲朋。坎坷人生看我追风 ，大千世界在我心中。
					</font></p>
					<div > 
						<img alt="多啦爱梦伴我前行" src="images/photo2_1.jpg">
					</div>
					<br>
					<p><font size="3px">“大雄，我要走了……你要照顾好自己……”哆啦Ａ梦看了看遍体鳞伤躺在床上睡去却甜蜜微笑着的大雄，默默的在心里说道——这一刻，他的眼眶湿润了。   
       “等等，我还要做一件事情……”哆啦Ａ梦想到——这也是一件他渴望了很久的事情，这也是最后的机会了……   
					</font></p>
					<div > 
						<img alt="多啦爱梦伴我前行" src="images/photo2_2.jpg">
					</div>
					<br>
					<p><font size="3px">  轻盈的哼唱声浮游在屋子里，打到了白墙上又弹入到了耳朵里，好像在跟我的听觉做着游戏，慢慢的、慢慢的被幽静的氛围带入了酣甜里，那是一个儿时的夏日午后，电视机里面放着小叮当的歌声，手遥一只噼哩叭啦的拨浪鼓，嘴角里吐出了灿烂的欢笑，不知道望着什么，就这样走一步摔一步地到处摸到处撞的，偶尔头碰到了墙，一个香菇大的包包从突突的脑袋上探了出来，一阵哭声后我仍然傻傻地对着电视机笑着，手心不知道被什么怪力吸引着，不停的往上捏着某个东西。小憩后，眼睛朦胧地闪烁着胶片似的记忆，想起；那年，我想拥有一个哆啦A梦。每次雨后，被新绿天色吸引的我漫步公园，倾听着大树叶脉的呼吸，任随风在我的耳边舞动，走过小桥欣赏着初晴的傍晚，一个小孩子手里的风车在淡红吹霞里欢快的转动着，那是一个印有机器猫的风车，在不远处的小贩手里还有很多的多啦A梦的玩物，小朋友天真地拽着它自由地奔跑在湿润的草地上，仿佛是童年的梦想，不放手，也不会放······ 
					</font></p>
				</div>
				<div class="col-md-9 col-md-offset-2">
					<img src="images/ava-3.jpeg" class="img-circle"/>
				</div>
				<textarea id="demo12" cols="90" rows="6" style="background-color:#D0E9C6; margin-left: 200px;" ></textarea><br/><br/>  
				<div class="col-md-10 col-md-offset-6">
				<input type="button" class="btn btn-info"  value="发表" onclick="saveStorage('demo2');" />   
				<input type="button" class="btn btn-danger" value="清空" onclick="clearStorage('msg2');" />   
				<input type="button" class="btn btn-success" value="读取" onclick="loadStorage('msg2');" />
				</div>
				<hr color="red" >  
				<p id="msg12"></p>  
			</div>
		</div>
	</div>
  </body>
</html>
