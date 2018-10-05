<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>回忆录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<!-- Bootstrap Core CSS -->
		<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
		<link href="zzy.ico" rel="shortcut icon" />
		
		<!-- Custom CSS -->
		<link rel="stylesheet" href="css/style.css">
		<link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">

		<!-- jQuery and Modernizr-->
		<script type="text/javascript" src="js/jquery1.12.2.js"></script>
		
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

			<!-- /////////////////////////////////////////Content -->
			<div id="page-content" class="index-page container">
				<div class="row">
					<div id="main-content">
						<!-- background not working -->
						<div class="col-md-9">
							<div class="box">
								<ul class="breadcrumb">
								  <li><a href="index.jsp">首页</a>   <span class="divider"></span></li>
								  <li><a href="hyl.jsp">回忆录</a></li>
								</ul>
								<div class="box-header header-vimeo">
									<h2>回忆录</h2>
									<button class="btn btn-info" data-toggle="modal" data-target="#myModal" style="float: right;">发表</button>
								</div>
								<div class="box-content">
									<div class="row">
										<div class="col-md-12">
										<c:forEach var="ad" items="${ad}">
											<div class="media">
												<div class="media-left media-middle col-md-3">
													<a href="#">
														<img class="media-object" src="${ad.aphoto} " alt="动物园之行——老虎" width="200px">
													</a>
												</div>
												<div class="media-body col-md-9">
													<h4 class="media-heading">${ad.atitle}</h4>
													<p>${ad.acontent} </p>
													<div class="info">
														<span><i class="glyphicon glyphicon-tags"></i>&nbsp;${ad.atype}</span>
														<span><i class="glyphicon glyphicon-time"></i>&nbsp;${ad.atime}</span>
														<span style="float: right;"><a href="<%=basePath%>ArticleServlet?flag=dal&aid=${ad.aid}"><i class="glyphicon glyphicon-trash"></i>&nbsp;删除</a></span>
													</div>
												</div>
											</div>
											<hr />
											</c:forEach>
											
											
											
											<!-- Button trigger modal -->

										<!-- Modal -->
										<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
										  <div class="modal-dialog" role="document">
										    <div class="modal-content">
										      <div class="modal-header">
										        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										        <h4 class="modal-title" id="myModalLabel">添加文章</h4>
										      </div>
										      <div class="modal-body">
										        <div class="container-fluid">
										        <form action="<%=basePath%>ArticleServlet?flag=add" method="post">
													<div class="col-md-12">
															
														<div class="col-md-3 col-md-offset-1">
															<h6>*文章标题</h6>
														</div>
														<div class="col-md-7 col-md-offset-0"><input type="text" class="form-control" placeholder="文章标题" name="atitle"><br>
														</div>
													</div>
													<div class="col-md-12">
														<div class="col-md-3 col-md-offset-1">
															<h6>*文章图片</h6></div>
														<div class="col-md-7 col-md-offset-0"><input type="text" class="form-control" placeholder="图片路径" name="aphoto"><br></div>
													</div>
													<div class="col-md-12">
														<div class="col-md-3 col-md-offset-1">
															<h6>*文章内容</h6></div>
						
														<div class="col-md-7 col-md-offset-0">
															<textarea class="form-control" rows="3" placeholder="文章内容" name="acontent"></textarea>
															<br>
														</div>
													</div>
													<div class="col-md-12">
															
														<div class="col-md-3 col-md-offset-1">
															<h6>*文章类型</h6>
														</div>
														<div class="col-md-5 col-md-offset-0">
															<select class="form-control" style="width: 180px;" name="atype">
												                <option value="工作日志">工作日志</option>
												                <option value="生活感悟">生活感悟</option>
															</select>
																<br>
														</div>
													</div>
													<div class="col-md-12">
														<div class="col-md-3 col-md-offset-1">
															<h6>*成立时间</h6>
														</div>
	
														<div class="col-md-7 col-md-offset-0">
															<div class="btn-group">
																<input type="date" class="form-control" id="datex" placeholder="日期" style="width: 255px; height: 35px;" name="atime">
															</div>
														</div>	
													</div>
											      <!-- </div> -->
											      <div class="modal-footer">
													<input type="hidden" name="flag" value="add">
													<button type="submit" class="btn btn-success"  >确定添加</button>
													<button type="reset" class="btn btn-info" data-dismiss="modal">取消</button>
												 </div>
											 </form>
											 </div>
										    </div>
										  </div>
										</div>	
									</div>	
										
									<!--  -->
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
									<img src="images/banner-2.jpg" class="img-responsive" />
								</div>
							</div>

							<!---- Start Widget ---->
							<div class="widget wid-calendar">
								<div class="heading">
									<h4>日期</h4></div>
								<div class="content">
									<center>
										<form action="" role="form">
											<div class="">
												<div class="input-group date form_date" data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd"> </div>
												<input type="hidden" id="dtp_input2" value="" /><br/>
											</div>
										</form>
									</center>
								</div>
							</div>
							<!---- Start Widget ---->
							<div class="widget wid-gallery">
								<div class="heading">
									<h4>好友来访</h4></div>
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
						<div class="col-md-3" style="float:right">
							<!---- Start Widget ---->
							<div class="widget wid-tags">
								<div class="heading">
									<h4>标签</h4></div>
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
								<div class="heading">
									<h4>亲密度</h4></div>
								<div class="content">
									<div class="post">
										<a href="single.html">
											<img src="images/ava-1.jpg" class="img-circle" />
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
											<img src="images/ava-2.png" class="img-circle" />
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
											<img src="images/ava-3.jpeg" class="img-circle" />
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
								<div class="heading">
									<h4>分享</h4></div>
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
					<p>Copyright &copy; Blogs</a>
					</p>
				</div>
			</footer>
			<!-- Footer -->

			<!-- JS -->
			<script src="owl-carousel/owl.carousel.js"></script>
			<script>
				$(document).ready(function() {
					$("#owl-demo-1").owlCarousel({
						autoPlay: 3000,
						items: 1,
						itemsDesktop: [1199, 1],
						itemsDesktopSmall: [400, 1]
					});
					$("#owl-demo-2").owlCarousel({
						autoPlay: 3000,
						items: 3,
					});
				});
			</script>

			<script type="text/javascript" src="js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
			<script type="text/javascript" src="js/locales/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>
			<script type="text/javascript">
				$('.form_datetime').datetimepicker({
					//language:  'fr',
					weekStart: 1,
					todayBtn: 1,
					autoclose: 1,
					todayHighlight: 1,
					startView: 2,
					forceParse: 0,
					showMeridian: 1
				});
				$('.form_date').datetimepicker({
					language: 'fr',
					weekStart: 1,
					todayBtn: 1,
					autoclose: 1,
					todayHighlight: 1,
					startView: 2,
					minView: 2,
					forceParse: 0
				});
				$('.form_time').datetimepicker({
					language: 'fr',
					weekStart: 1,
					todayBtn: 1,
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
