<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    
    <title>Merry Christmas!</title>
    
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
    var key = "w4";
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
    loadStorage('msg4');  
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
					<h3>"Merry Christmas!"</h3>
				</div>
				<div class="col-sm-7 col-sm-offset-2"> 
					<img alt="Merry Christmas!" src="images/w3.jpg">
				</div>
				<br/>
				<br/>
				<div class="col-sm-7 col-sm-offset-2">
				<br>
					<p><font size="3px">怪事皆因由心起（  ）
　　      									出言不逊有延时（  ）
　　     									心想除去一块土（  ）
　　      									星不闪烁定有失（  ）
        								（以上每句话猜一个字）
					</font></p>
					<div > 
						<img alt="Merry Christmas!" src="images/zzy1_1.jpg">
					</div>
					<br>
					<p><font size="3px">快要过圣诞节了。在过节的前几天，都会看到校园内的外国专家楼门前，摆起了一大盆用松树装饰成的绿树，上面还挂着一串串五颜六色的小彩灯，甚是别致、美丽。校园内四季常绿的树很多，但特地被挑选出一株来，经装饰后放在门前，并伴之以光亮，则显得大不相同，它给寒冷的冬天带来的是一种宁馨的色彩，使人感到一阵春天的气息，由此，不得不钦佩这一新年原创者的智慧与匠心。
					</font></p>
					<div > 
						<img alt="Merry Christmas!" src="images/zzy1_2.jpg">
					</div>
					<br>
					<p><font size="3px">圣诞节（Christmas）又称耶诞节，译名为“基督弥撒”，西方传统节日，在每年12月25日。弥撒是教会的一种礼拜仪式。圣诞节是一个宗教节，因为把它当作耶稣的诞辰来庆祝，故名“耶诞节”。
大部分的天主教教堂都会先在24日的平安夜，亦即12月25日凌晨举行子夜弥撒，而一些基督教会则会举行报佳音，然后在12月25日庆祝圣诞节；基督教的另一大分支——东正教的圣诞节庆则在每年的1月7日。
圣诞节也是西方世界以及其他很多地区的公共假日，例如：在亚洲的香港、澳门、马来西亚和新加坡。圣经实际上并无记载耶稣诞生日期，圣诞节是后人公定的······ 
					</font></p>
					<hr>
				</div>
				<div class="col-md-9 col-md-offset-2">
					<img src="images/ava-3.jpeg" class="img-circle"/>
				</div>
				<textarea id="demo4" cols="90" rows="6" style="background-color:#D0E9C6; margin-left: 200px;" ></textarea><br/><br/>  
				<div class="col-md-10 col-md-offset-6">
				<input type="button" class="btn btn-info"  value="发表" onclick="saveStorage('demo4');" />   
				<input type="button" class="btn btn-danger" value="清空" onclick="clearStorage('msg4');" />   
				<input type="button" class="btn btn-success" value="读取" onclick="loadStorage('msg4');" />
				</div>
				<hr color="red" >  
				<p id="msg4"></p>  
			</div>
		</div>
	</div>
  </body>
</html>
