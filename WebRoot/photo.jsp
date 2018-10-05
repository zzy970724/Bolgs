<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>相册</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
	<link rel="stylesheet"  href="css/photo.css">

	<link href="zzy.ico" rel="shortcut icon" />

		<!-- Custom CSS -->
		<link rel="stylesheet" href="css/style.css">
		<link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">

		
		<!-- jQuery and Modernizr-->
		<script src="js/jquery-2.1.1.js"></script>
		<!-- Core JavaScript Files -->
		<script src="js/bootstrap.min.js"></script>
		<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
 		<!-- <script>
			$(function(){
				var imgs = $('img[name="ph"]');
				
				imgs.each(function(index, element){
				element = $(element);
				element.parent().parent().next().hide();
				element.bind('mouseover',function(){$(this).parent().parent().next().show()});
				element.bind('mouseout',function(){$(this).parent().parent().next().hide()});
				//console.log(index);
				/* $(element.parentNode.parentNode).next().hide(); */
				console.log();
				
				
			})});
</script> -->
 </head>
 <body >
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
						<div class="col-md-12">
								<ul class="breadcrumb">
								  <li><a href="index.jsp">首页</a>   <span class="divider"></span></li>
								  <li><a href="hyl.jsp">回忆录</a></li>
								</ul>
							<div class="box">
								
								<div  style="background: url('images/title-vimeo.png') repeat-x center center ;margin-bottom: 20px;">
										<h2 style=" font-size: 25px;padding: 0px 8px;background-color: #fff;display: inline-block;margin-left: 15px;color: #333;">相册</h2>
										<button class="btn btn-info" data-toggle="modal" data-target="#myModal" style="float: right;">上传</button>
								</div>
								<c:forEach var="pd2" items="${pd}" varStatus="stat">
								
										<c:if test="${stat.count == 1 || (stat.count - 1) % 4 == 0 }">
											<div class="media">
												<div class="media-left media-middle col-md-12">
										</c:if>
											
													<div class="col-md-3">
													<a href="#">
														<img name="ph" class="media-object" src="${pd2.pphoto} " alt="${pd2.patitle}" width="200px">
														<span><i class="glyphicon glyphicon-time"></i>&nbsp;${pd2.ptime}</span>
														<span ><a href="<%=basePath%>PhotoServlet?flag=dal&pid=${pd2.pid}" style="color:gray"><i class="glyphicon glyphicon-trash"></i>&nbsp;删除</a></span>
													</a>
													</div>
												
													<c:if test="${(stat.count != 1 && (stat.count - 1) % 4 == 0) || stat.count == fn:length(pd)}">
											
										
												</div>
												<!-- <div class="media-body col-md-9">
													<h4 class="media-heading">${pd2.patitle}</h4>
												</div>
												<div class="info2">
														<span><i class="glyphicon glyphicon-time"></i>&nbsp;${pd2.ptime}</span>
														<span><a href="<%=basePath%>PhotoServlet?flag=dal&pid=${pd2.pid}" style="color:gray"><i class="glyphicon glyphicon-trash"></i>&nbsp;删除</a></span>
												</div>
												 -->
												 <hr />
											</div>
											
											</c:if>
											</c:forEach>
								<!-- Button trigger modal -->

										<!-- Modal -->
										<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
										  <div class="modal-dialog" role="document">
										    <div class="modal-content">
										      <div class="modal-header">
										        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										        <h4 class="modal-title" id="myModalLabel">图片上传</h4>
										      </div>
										      <div class="modal-body">
										        <div class="container-fluid">
										        <form action="<%=basePath%>PhotoServlet?flag=add" method="post">
													<div class="col-md-12">
														<div class="col-md-3 col-md-offset-1">
															<h6>*图片标题</h6>
														</div>
														<div class="col-md-7 col-md-offset-0"><input type="text" class="form-control" placeholder="文章标题" name="patitle"><br>
														</div>
													</div>
													<div class="col-md-12">
														<div class="col-md-3 col-md-offset-1">
															<h6>*上传图片</h6></div>
														<div class="col-md-7 col-md-offset-0"><input type="text" class="form-control" placeholder="图片路径" name="pphoto"><br></div>
													</div>
													<div class="col-md-12">
														<div class="col-md-3 col-md-offset-1">
															<h6>*上传时间</h6>
														</div>
	
														<div class="col-md-7 col-md-offset-0">
															<div class="btn-group">
																<input type="date" class="form-control" id="datex" placeholder="日期" style="width: 255px; height: 35px;" name="ptime">
															</div>
														</div>	
													</div>
											      <!-- </div> -->
											      <div class="modal-footer">
													<input type="hidden" name="flag" value="add">
													<button type="submit" class="btn btn-success"  >确定上传</button>
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

  </body>
</html>