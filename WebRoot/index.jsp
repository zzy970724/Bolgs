<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>主页</title>
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

    <script src="js/bootstrap.min.js"></script>
 
</head>

<body>
<header>
	<!--Top-->

	<nav id="top" style="background-color: #000000;">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-md-12">
					<ul class="list-inline top-link link" style="color:white ;">
						<li ><font color="white" class="glyphicon glyphicon-user">&nbsp;欢迎 ${username}  </font></li>
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
						<li><a href="xqsb.jsp"><i class="fa fa-cubes"></i>心情随笔 </a></li>
						<li><a href="<%=basePath%>ArticleServlet?flag=select"><i class="fa fa-envelope"></i> 回忆录</a></li>
						<li><a href="photo.jsp"><i class="fa fa-cubes"></i>相册</a></li>
						<li><a href="lyb.jsp"><i class="fa fa-envelope"></i> 留言板</a></li>
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
			<div class="col-sm-8">
				<!-- Carousel -->
				<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
						<li data-target="#carousel-example-generic" data-slide-to="1"></li>
						<li data-target="#carousel-example-generic" data-slide-to="2"></li>
					</ol>
					<!-- Wrapper for slides -->
					<div class="carousel-inner">
						<div class="item active">
							<img src="images/t3.jpg" alt="First slide">
							<!-- Static Header -->
							<div class="header-text hidden-xs">
								<div class="col-md-12 text-center">
									<h2>我还是喜欢你,像风走了八千里,不问归期.</h2>
									<br>
									<h3>I still love you, like the wind and walked eight thousand miles, no return.</h3>
									<br>
								</div>
							</div><!-- /header-text -->
						</div>
						<div class="item">
							<img src="images/t4.jpg" alt="Second slide">
							<!-- Static Header -->
							<div class="header-text hidden-xs">
								<div class="col-md-12 text-center">
									<h2>心若向阳，无畏悲伤.</h2>
									<br>
									<h3>If the heart is sunny, fear the sorrow.</h3>
									<br>
								</div>
							</div><!-- /header-text -->
						</div>
						<div class="item">
							<img src="images/t1.jpg" alt="Third slide">
							<!-- Static Header -->
							<div class="header-text hidden-xs">
								<div class="col-md-12 text-center">
									<h2>对明天最好的准备，就是今天的做到最好.</h2>
									<br>
									<h3>The best preparation for tomorrow is doing your best today.</h3>
									<br>
								</div>
							</div><!-- /header-text -->
						</div>
					</div>
					<!-- Controls -->
					<a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
						<span class="glyphicon glyphicon-chevron-left"></span>
					</a>
					<a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
						<span class="glyphicon glyphicon-chevron-right"></span>
					</a>
				</div><!-- /carousel -->
			</div>
			<div class="col-sm-4" >
				<div class="media">
				  <div class="media-left">
				    <!--<a href="#">
				      <img class="media-object" src="images/slide-1.jpg" alt="...">
				    </a>-->
				    
				  </div>
				  <div class="media-body">
				  	<div style="background-image: url(images/banner.jpg); width: 400px; height:400px;">
					<audio controls="controls" loop="loop" style="margin-top: 350px;margin-left: 30px;">
						 <!--<source src="MP3/Music01.mp3" type="audio/mpeg">-->
						 <source src="MP3/Music02.mp3" type="audio/mpeg">
						  <source src="MP3/Music03.mp3" type="audio/mpeg">
						Your browser does not support the audio element.
					</audio>
					</div>
				  </div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- /////////////////////////////////////////Content -->
	<div id="page-content" class="index-page container">
		<div class="row">
			<div id="main-content"><!-- background not working -->
				<div class="col-md-9">
					<div class="box">
						<div class="box-header header-vimeo">
							<h2>回忆录</h2>
						</div>
						<div class="box-content">
							<div class="row">
								<div class="col-md-6">
									<div class="wrap-vid">
										<div class="zoom-container">
											<div class="zoom-caption">
												<span class="vimeo">回忆录</span>
												<a href="Article/w1.jsp">
													<i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
												</a>
												<p>苦而不言，喜而不语.</p>
											</div>
											<img src="images/zzy1.jpg" />
										</div>
										<h3 class="vid-name"><a href="Article/w1.jsp">苦而不言，喜而不语</a></h3>
						
							<p class="more">苦而不言，喜而不语。短短两句，包括了做人之最高境界。为人收敛，不大惊小呼;为人谦让，不傲慢自居。人生在世，往往会因这样或那样的伤害而心痛不已。累累伤痕是生命给你的最好礼物。
											与其苦形于色,不如苦过之后，轻轻拭去眼角的残泪，用灿烂的笑脸遮掩忧伤，将暗涌深藏。正是这些刻骨铭心的痛，让我们懂得了珍惜生活，珍惜身边的人!
							</p>
						<div class="info">
							<span><i class="glyphicon glyphicon-tags"></i>&nbsp;回忆录</span>
							<span><i class="glyphicon glyphicon-time"></i>&nbsp;2017-08-09</span>
							<span><i class="glyphicon glyphicon-heart"></i>&nbsp;1,200</span>

						</div>
							</div>
								</div>
								<div class="col-md-5 col-md-offset-1">
									<div class="post wrap-vid">
										<div class="zoom-container">
											<div class="zoom-caption">
												<span class="vimeo">回忆录</span>
												<a href="Article/w2.jsp">
													<i class="fa fa-play-circle-o fa-3x" style="color: #fff"></i>
												</a>
												<p>父亲节</p>
											</div>
											<img src="images/w1.jpg" />
										</div>
										<div class="wrapper">
											<h5 class="vid-name"><a href="Article/w2.jsp">父爱如山,岁月静好</a></h5>
											<div class="info">
												<h6>By <a href="hyl.jsp">回忆录</a></h6>
												<span>
													<i class="glyphicon glyphicon-time"></i>25/3/2015 /
													<i class="glyphicon glyphicon-heart"></i>1,200 
												</span>
											</div>
										</div>
									</div>
									<div class="post wrap-vid">
										<div class="zoom-container">
											<div class="zoom-caption">
												<span class="vimeo">回忆录</span>
												<a href="Article/w3.jsp">
													<i class="fa fa-play-circle-o fa-3x" style="color: #fff"></i>
												</a>
												<p>朋友</p>
											</div>
											<img src="images/w2.jpg" />
										</div>
										<div class="wrapper">
											<h5 class="vid-name"><a href="Article/w3.jsp">同桌的你</a></h5>
											<div class="info">
												<h6>By <a href="hyl.jsp">回忆录</a></h6>
												<span>
													<i class="glyphicon glyphicon-time"></i>25/3/2015 /
													<i class="glyphicon glyphicon-heart"></i>1,200 
												</span>
											</div>
										</div>
									</div>
									<div class="post wrap-vid">
										<div class="zoom-container">
											<div class="zoom-caption">
												<span class="vimeo">回忆录</span>
												<a href="Article/w4.jsp">
													<i class="fa fa-play-circle-o fa-3x" style="color: #fff"></i>
												</a>
												<p>圣诞节</p>
											</div>
											<img src="images/w3.jpg" />
										</div>
										<div class="wrapper">
											<h5 class="vid-name"><a href="Article/w4.jsp">Merry Christmas!</a></h5>
											<div class="info">
												<h6>By <a href="hyl.jsp">回忆录</a></h6>
												<span>
													<i class="glyphicon glyphicon-time"></i>25/3/2015 /
													<i class="glyphicon glyphicon-heart"></i>1,200 
												</span>
											</div>
										</div>
									</div>
									<div class="post wrap-vid">
										<div class="zoom-container">
											<div class="zoom-caption">
												<span class="vimeo">回忆录</span>
												<a href="Article/w5.jsp">
													<i class="fa fa-play-circle-o fa-3x" style="color: #fff"></i>
												</a>
												<p>十年后的我</p>
											</div>
											<img src="images/w4.jpg" />
										</div>
										<div class="wrapper">
											<h5 class="vid-name"><a href="Article/w5.jsp">写给十年后的自己</a></h5>
											<div class="info">
												<h6>By <a href="hyl.jsp">回忆录</a></h6>
												<span>
													<i class="glyphicon glyphicon-time"></i>25/3/2015 /
													<i class="glyphicon glyphicon-heart"></i>1,200 
												</span>
										
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="box">
						<div class="box-header header-vimeo">
							<h2>回忆录</h2>
						</div>
						<div class="box-content">
							<div class="row">
								<div class="col-md-6">
									<div class="wrap-vid">
										<div class="zoom-container">
											<div class="zoom-caption">
												<span class="vimeo">回忆录</span>
												<a href="Article/w6.jsp">
													<i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
												</a>
												<p>毕业季</p>
											</div>
											<img  src="images/zzy3.jpg" />
										</div>
										<h3 class="vid-name"><a href="Article/w6.jsp">青春不散场</a></h3>
									</div>
									<p class="more">青春是人生的玫瑰,虽注定凋零，但必须用生命怒放。青春必定乱石磊磊,但也满途芬芳。其实只需勇敢一次青春,便可不腐我愿用三年的青春,换一个心底永远的一一永远的回忆…….</p>
										<div class="info">
											<span><i class="glyphicon glyphicon-tags"></i>&nbsp;回忆录</span>
											<span><i class="glyphicon glyphicon-time"></i>&nbsp;2017-08-09</span>
											<span><i class="glyphicon glyphicon-heart"></i>&nbsp;1,200</span>
										</div>
								</div>
								<div class="col-md-5 col-md-offset-1">
									<div class="post wrap-vid">
										<div class="zoom-container">
											<div class="zoom-caption">
												<span class="vimeo">回忆录</span>
												<a href="Article/w7.jsp">
													<i class="fa fa-play-circle-o fa-3x" style="color: #fff"></i>
												</a>
												<p>父亲节</p>
											</div>
											<img src="images/w1.jpg" />
										</div>
										<div class="wrapper">
											<h5 class="vid-name"><a href="Article/w7.jsp">父爱如山,岁月静好</a></h5>
											<div class="info">
												<h6>By <a href="hyl.jsp">回忆录</a></h6>
												<span><i class="glyphicon glyphicon-heart"></i>1,200 / <i class="glyphicon glyphicon-time"></i>25/3/2015</span>
												<span class="rating">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star-half"></i>
												</span>
											</div>
										</div>
									</div>
									<div class="post wrap-vid">
										<div class="zoom-container">
											<div class="zoom-caption">
												<span class="vimeo">回忆录</span>
												<a href="Article/w8.jsp">
													<i class="fa fa-play-circle-o fa-3x" style="color: #fff"></i>
												</a>
												<p>朋友</p>
											</div>
											<img src="images/w2.jpg" />
										</div>
										<div class="wrapper">
											<h5 class="vid-name"><a href="Article/w8.jsp">同桌的你</a></h5>
											<div class="info">
												<h6>By <a href="hyl.jsp">回忆录</a></h6>
												<span><i class="glyphicon glyphicon-heart"></i>1,200 / <i class="glyphicon glyphicon-time"></i>25/3/2015</span>
												<span class="rating">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
												</span>
											</div>
										</div>
									</div>
									<div class="post wrap-vid">
										<div class="zoom-container">
											<div class="zoom-caption">
												<span class="vimeo">回忆录</span>
												<a href="Article/w9.jsp">
													<i class="fa fa-play-circle-o fa-3x" style="color: #fff"></i>
												</a>
												<p>圣诞节</p>
											</div>
											<img src="images/w3.jpg" />
										</div>
										<div class="wrapper">
											<h5 class="vid-name"><a href="Article/w9.jsp">Merry Christmas!</a></h5>
											<div class="info">
												<h6>By <a href="hyl.jsp">回忆录</a></h6>
												<span><i class="glyphicon glyphicon-heart"></i>1,200 / <i class="glyphicon glyphicon-time"></i>25/3/2015</span>
												<span class="rating">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star-half"></i>
												</span>
											</div>
										</div>
									</div>
									<div class="post wrap-vid">
										<div class="zoom-container">
											<div class="zoom-caption">
												<span class="vimeo">回忆录</span>
												<a href="Article/w10.jsp">
													<i class="fa fa-play-circle-o fa-3x" style="color: #fff"></i>
												</a>
												<p>十年后的我</p>
											</div>
											<img src="images/w4.jpg" />
										</div>
										<div class="wrapper">
											<h5 class="vid-name"><a href="Article/w10.jsp">写给十年后的自己</a></h5>
											<div class="info">
												<h6>By <a href="hyl.jsp">回忆录</a></h6>
												<span><i class="glyphicon glyphicon-heart"></i>1,200 / <i class="glyphicon glyphicon-time	"></i>25/3/2015</span>
												<span class="rating">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star-half"></i>
												</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="box">
						<div class="box-header header-natural">
							<h2>回忆录</h2>
						</div>
						<div class="box-content">
							<div class="row">
								<div class="col-md-6">
									<img class="img-rounded" src="images/photo1.jpg" style="width: 372px;height: 211px"/>
									<h3><a href="Article/w11.jsp">火影忍者，火之意志</a></h3>
									<p>人生在世只有一次，不必勉强选择自己不喜欢的路，随性而生或随性而死都没关系，不过，无论选择哪条路，都不要忘记保护自己所珍惜的人。
只要有树叶飞舞的地方就会有火在燃烧，那火光会照耀着村子，然后新的树叶会再次萌芽。 人在为了保护最重要的人的时候，会变得非常坚强。</p>
									<span><i class="glyphicon glyphicon-tags"></i>&nbsp;回忆录</span>
									<span><i class="glyphicon glyphicon-time"></i>&nbsp;2017-08-09</span>
									<span><a href="Article/w11.jsp"><i class="glyphicon glyphicon-comment"></i>&nbsp;评论(0)</a></span>
									<span><i class="glyphicon glyphicon-heart"></i>&nbsp;1,200</span>
								</div>
								<div class="col-md-6">
									<img class="img-rounded" src="images/photo2.jpg" style="width: 372px;height: 211px" />
									<h3><a href="Article/w12.jsp">多啦爱梦伴我前行</a></h3>
	
					
									<p>命运遮住了我的眼睛 ，长夜笼罩着我的心灵 ，我摸索在这缤纷的世界。几多苦雨，几多寒风 。脚下一条无障碍通道 ，点燃心中破雾的明灯，我从此纵横广阔的天地。 路有多远我能前行，一米阳光绽放真情，万千关爱恰似好友亲朋。坎坷人生看我追风 ，大千世界在我心中。</p>
									<span><i class="glyphicon glyphicon-tags"></i>&nbsp;回忆录</span>
									<span><i class="glyphicon glyphicon-time"></i>&nbsp;2017-08-09</span>
									<span><a href="Article/w12.jsp"><i class="glyphicon glyphicon-comment"></i>&nbsp;评论(0)</a></span>
									<span><i class="glyphicon glyphicon-heart"></i>&nbsp;1,200</span>
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="sidebar">
				<div class="col-md-3">	
					<!---- Start Widget ---->
					<div class="widget wid-banner">
						<div class="content">
							<img src="images/banner-2.jpg" class="img-responsive"/>
						</div>
					</div>
					
					<!---- Start Widget ---->
					<div class="widget wid-calendar">
						<div class="heading"><h4>日期</h4></div>
						<div class="content">
							<center><form action="" role="form">        
								<div class="">
									<div class="input-group date form_date" data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">                </div>
									<input type="hidden" id="dtp_input2" value="" /><br/>
								</div>
							</form></center>
						</div>
					</div>
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
				<div class="col-md-3">
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
					<!---- Start Widget ---->
					<div class="widget wid-tweet">
						<div class="heading"><h4>分享</h4></div>
						<div class="content">

						<ul>
							<li><a href="http://893642565.qzone.qq.com">QQ空间</a></li>
							<li><a href="https://www.baidu.com">百度</a></li>
							
						</ul>
							<hr />
							<div id="bdshare" class="bdshare_t bds_tools_32 get-codes-bdshare share">
								<a class="bds_tsina"></a>
								<a class="bds_qzone"></a>
								<a class="bds_tqq"></a>
								<a class="bds_renren"></a>
								<span class="bds_more"></span>
							</div>
					<script type="text/javascript" id="bdshare_js" data="type=tools&amp;uid=6574585"></script>
					<script type="text/javascript" id="bdshell_js"></script>
					<script type="text/javascript">
						document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + Math.ceil(new Date() / 3600000)
					</script>
						</div>
					</div>
					
				</div>
			</div>
		</div>
	</div>

	<footer>
		<div class="wrap-footer">
			<div class="container">
				
					<div class="col-md-12 col-footer-4">
						<P style="text-align: center;">http://893642565.qzone.qq.com All rights reserved.</P>
					</div>
				</div>
			</div>
		</div>
		<div class="copy-right">
			<p>Copyright &copy; Blogs</a></p>
		</div>
	</footer>
	<!-- Footer -->
	
	
	
	
	<!-- JS -->
	<script src="owl-carousel/owl.carousel.js"></script>
    <script>
    $(document).ready(function() {
      $("#owl-demo-1").owlCarousel({
        autoPlay: 3000,
        items : 1,
        itemsDesktop : [1199,1],
        itemsDesktopSmall : [400,1]
      });
	  $("#owl-demo-2").owlCarousel({
        autoPlay: 3000,
        items : 3,
        
      });
    });
    </script>
	
	
	<script type="text/javascript" src="js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/locales/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>
	<script type="text/javascript">
    $('.form_datetime').datetimepicker({
        //language:  'fr',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		forceParse: 0,
        showMeridian: 1
    });
	$('.form_date').datetimepicker({
        language:  'fr',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		minView: 2,
		forceParse: 0
    });
	$('.form_time').datetimepicker({
        language:  'fr',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 1,
		minView: 0,
		maxView: 1,
		forceParse: 0
    });
</script>
</body>
</html>