<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
 
    <title>写给十年后的自己</title>
    
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
    var key = "w5";
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
    loadStorage('msg5');  
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
					<h3>"十年后的我"</h3>
				</div>
				<div class="col-sm-7 col-sm-offset-2"> 
					<img alt="十年后的我" src="images/w4.jpg">
				</div>
				<br/>
				<br/>
				<div class="col-sm-7 col-sm-offset-2">
				<br>
					<p><font size="3px">不论是跟喜欢的人一起漫步的地方,还是那个时候看见的景色。不去回头 越过现今,我会和什么相遇呢？只是停在那里,只会问是什么意思一定还不是个大人,现在看到的事物。现在相遇的人,在其中仅仅看著前方。给十年后的我,现在幸福吗？还是正在悲伤的哭泣呢？但是在你的身边,还有没有改变的事物。只是没有发现到,不是一直被守护着吗？将感情放在度过的每一天中,仅仅只有在追赶着时间。那寄托在背上的 某人的梦,回过头来看的日子总有一天会到来吧。
					</font></p>
					<div > 
						<img alt="十年后的我" src="images/w4_1.jpg">
					</div>
					<br>
					<p><font size="3px">十年后的我，会是怎么样了？我不敢想象，但是有一点我敢肯定，至少比现在过的好。现在的我，路逢人生中的第一个十字路口，往左边，顺眼望去，是一条铺满柏油的公路，安安静静，偶尔能看到行人过往，公路边的梧桐，枝叶繁茂，有一两只小鸟在上面叽叽喳喳；右边，却是一条不起眼的岔路，只是铺了一层简单的水泥，路边杂草丛生，没有一点生机，甚至，没有谁知道这是通向哪儿？我秉着一副冒险家的神气，理直气壮地说：“我去看看，这到底是通到哪儿去的。”此刻，我好像回到了小时候，一股子憨劲，敢于去探寻无知的世界。十年如一瞬息，想到那时，我三十四岁，已过了而立之年，十年前的稚嫩肯定一抛全无，有的是男人睿智、理性和成熟的魅力。
					
					</font></p>
					<div > 
						<img alt="十年后的我" src="images/w4_2.jpg">
					</div>
					<br>
					<p><font size="3px">那个时候的我，是不是应该感谢我当年的那个抉择了？也许那时候我会在大都市打拼，甚至，可能有了一个美满的家庭。休闲之余，我会带着老婆孩子，去江边散散步，依着栏杆，亦或坐在台阶上，吹吹河风，一起看即将谢幕的夕阳，我的孩子可能会开心地叫着：“爸爸，你看，你快看！”那时，正如诗人所说的“落霞与孤鹜齐飞，秋水共长天一色”，美丽的黄昏伴随着所有的欢声笑语，我们将张开双臂，一起迎接美丽的夜晚。十年，太过漫长，又太过短暂，一声声离别，一次次回眸，一个个足迹，还有那无尽的彷徨与叹息。时间，滴答滴答，还没回过神，已经悄然走过人生最美的年华。在杂草与荆棘丛生的道路上，我用时间来增长阅历，闲暇中，最大的乐趣，无非翻翻那些史书以及国学经典，看看中国华夏五千年文明的起起落落，看看伟人是怎样炼成的，看看那些骚客们的满腹诗情。偶尔，我也会看一些关于财经方面的知识，看看中国股市，楼市，宏观经济的走向，虽然没有专家们的独到见解，但是我不求甚解，只求不亦乐乎。这种心态，我相信三十四岁的我是完全可以明白的。记得，上高中的时候，我们做过一篇语文阅读理解，叫《一只特立独行的猪》，我对猪倒没什么好感，但‘特立独行’这四个字，却给我的记忆最深，从骨子里，我就觉得这四个字是特别适合我的，要说什么地方特立独行，我也说不上来，可能就是思想吧。从二十四岁到三十四岁，虽然这只是一个简单的跨度，但是其中的汇聚出来的人生却是三言两语道不尽，二十四岁的梦想可能到了三十四岁就成了幻想，当年的‘特立独行’可能就成了不切实际。对我而言，结局会不会不一样了？那个时候的我，会不会也正在满是书香的房间里，用力敲击着键盘，告诉十年前的自己：无论世界怎么变，我和以前的我依旧特立独行。关上电脑，揭开窗帘，此时，夜已深，满目的星光。窗台上，一株兰草，两三朵花蕾已经绽放，一习微风拂过，淡淡的花香，飘满了整个书房。······ 
					</font></p>
					<hr>
				</div>
				<div class="col-md-9 col-md-offset-2">
					<img src="images/ava-3.jpeg" class="img-circle"/>
				</div>
				<textarea id="demo5" cols="90" rows="6" style="background-color:#D0E9C6; margin-left: 200px;" ></textarea><br/><br/>  
				<div class="col-md-10 col-md-offset-6">
				<input type="button" class="btn btn-info"  value="发表" onclick="saveStorage('demo5');" />   
				<input type="button" class="btn btn-danger" value="清空" onclick="clearStorage('msg5');" />   
				<input type="button" class="btn btn-success" value="读取" onclick="loadStorage('msg5');" />
				</div>
				<hr color="red" >  
				<p id="msg5"></p>  
			</div>
		</div>
	</div>
  </body>
</html>
