<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link
	href="${pageContext.request.contextPath}/bootstrap-3.3.1-dist/dist/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/bootstrap-3.3.1-dist/dist/css/Style.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/bootstrap-3.3.1-dist/dist/css/BootstrapLayout.css"
	rel="stylesheet" type="text/css" />
<script
	src="${pageContext.request.contextPath}/bootstrap-3.3.1-dist/dist/js/jquery-2.1.3.min.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/bootstrap-3.3.1-dist/dist/js/bootstrap.min.js"
	type="text/javascript"></script>

<title>系统主页</title>
<style>
.formstyle {
	width: 100%;
	height: 100%;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	-o-border-radius: 10px;
	margin-top: 10%;
}
</style>
<script>
        jQuery(document).ready(function ($) {
            $('.theme-login').click(function () {
                $('.theme-popover-mask').fadeIn(100);
                $('.theme-popover').slideDown(200);
            })
            $('.theme-poptit .close').click(function () {
                $('.theme-popover-mask').fadeOut(100);
                $('.theme-popover').slideUp(200);
            })

        })
    </script>
</head>

<body>
	<div class="navbar navbar-fixed-top navbar-inverse" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span><span class="icon-bar"></span><span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Project name</a>
			</div>
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#"><span
							class="glyphicon glyphicon-home">Home</span></a></li>
					<li><a href="#shop"><span
							class="glyphicon glyphicon-shopping-cart">Shop</span></a></li>
					<li><a href="#support"><span
							class="glyphicon glyphicon-headphones">Support</span></a></li>
					<li><a href="javascript:;"><span
							class="glyphicon glyphicon-headphones theme-buy theme-login">
								Login</span></a></li>
				</ul>
			</div>
			<!-- /.nav-collapse -->
		</div>
		<!-- /.container -->
	</div>
	<center>
		<div class="theme-popover">
			<div class="theme-poptit">
				<a href="javascript:void(0);" title="关闭" class="close">×</a>
			</div>
			<div class="theme-popbod dform">
				<center>
					<form class="theme-signin formstyle" name="loginform" action=""
						method="post">
						<div class="input-group">
							<span class="input-group-addon has-success" style="width: 35%"><strong>用户名</strong></span>
							<input type="text" class="form-control" placeholder="请输入用户名">
						</div>
						<br>
						<div class="input-group">
							<span class="input-group-addon has-success" style="width: 35%"><strong>密码</strong></span>
							<input type="text" class="form-control" placeholder="请输入密码">
						</div>
						<br>
						<div align="center">
							<button type="submit" class="btn btn-success" id="subregister">
								登录</button>
							&nbsp;&nbsp;&nbsp;&nbsp;
							<button type="button" class="btn btn-success" id="btnRegister"
								onclick="javascript:window.location.href='${pageContext.request.contextPath}/servlet/RegisterUIServlet'">
								注册</button>
						</div>
					</form>
				</center>
			</div>
		</div>
		<div class="theme-popover-mask"></div>
	</center>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2">
				<ul id="main-nav" class="main-nav nav nav-tabs nav-stacked" style="">
					<li><a href="#"> <i class="glyphicon glyphicon-th-large"></i>
							首页
					</a></li>
					<li><a href="#systemSetting" class="nav-header collapsed"
						data-toggle="collapse"> <i class="glyphicon glyphicon-cog"></i>
							系统管理 <span class="pull-right glyphicon glyphicon-chevron-toggle"></span>
					</a>
						<ul id="systemSetting" class="nav nav-list secondmenu collapse"
							style="height: 0px;">
							<li><a href="#"><i class="glyphicon glyphicon-user"></i>&nbsp;用户管理</a></li>
							<li><a href="#"><i class="glyphicon glyphicon-th-list"></i>&nbsp;菜单管理</a></li>
							<li><a href="#"><i class="glyphicon glyphicon-asterisk"></i>&nbsp;角色管理</a></li>
							<li><a href="#"><i class="glyphicon glyphicon-edit"></i>&nbsp;修改密码</a></li>
							<li><a href="#"><i class="glyphicon glyphicon-eye-open"></i>&nbsp;日志查看</a></li>
						</ul></li>
					<li><a href="#configSetting" class="nav-header collapsed"
						data-toggle="collapse"> <i
							class="glyphicon glyphicon-credit-card"></i> 配置管理 <span
							class="pull-right glyphicon  glyphicon-chevron-toggle"></span>
					</a>
						<ul id="configSetting" class="nav nav-list secondmenu collapse in">
							<li class="active"><a href="#"><i
									class="glyphicon glyphicon-globe"></i>&nbsp;全局缺省配置</a></li>
							<li><a href="#"><i
									class="glyphicon glyphicon-star-empty"></i>&nbsp;未开通用户配置</a></li>
							<li><a href="#"><i class="glyphicon glyphicon-star"></i>&nbsp;退订用户配置</a></li>
							<li><a href="#"><i
									class="glyphicon glyphicon-text-width"></i>&nbsp;试用用户配置</a></li>
							<li><a href="#"><i class="glyphicon glyphicon-ok-circle"></i>&nbsp;开通用户配置</a></li>
						</ul></li>

					<li><a href="#disSetting" class="nav-header collapsed"
						data-toggle="collapse"> <i class="glyphicon glyphicon-globe"></i>
							分发配置 <span class="pull-right glyphicon glyphicon-chevron-toggle"></span>
					</a>
						<ul id="disSetting" class="nav nav-list secondmenu collapse">
							<li><a href="#"><i class="glyphicon glyphicon-th-list"></i>&nbsp;分发包配置</a></li>
						</ul></li>

					<li><a href="#dicSetting" class="nav-header collapsed"
						data-toggle="collapse"> <i class="glyphicon glyphicon-bold"></i>
							字典配置 <span class="pull-right glyphicon glyphicon-chevron-toggle"></span>
					</a>
						<ul id="dicSetting" class="nav nav-list secondmenu collapse">
							<li><a href="#"><i
									class="glyphicon glyphicon-text-width"></i>&nbsp;关键字配置</a></li>
						</ul></li>
					<li><a href="#"> <i class="glyphicon glyphicon-fire"></i>
							关于系统 <span class="badge pull-right">1</span>
					</a></li>

				</ul>
			</div>

			<div class="col-md-10 col-md-10border">
				<div class="leaderboard">
					<h1>个人介绍</h1>
					<div class="table-responsive">
						<table class="table">
							<tbody>
								<tr>
									<td class="success"><strong>姓名</strong></td>
									<td>朱静陵</td>
									<td class="success"><strong>性别</strong></td>
									<td>男</td>
									
									<td class="success" rowspan="3" align=center  valign=center><img src="${pageContext.request.contextPath }/images/QQ.png"/></td>
								</tr>
								<tr>
									<td class="success"><strong>出生日期</strong></td>
									<td>1990-10-14</td>
									<td class="success"><strong>毕业院校</strong></td>
									<td>广西师范大学</td>
								</tr>
								<tr>
									<td class="success"><strong>专业</strong></td>
									<td>计算机科学与技术</td>
									<td class="success"><strong>邮箱</strong></td>
									<td>971319231@qq.com</td>
								</tr>
							</tbody>
						</table>
					</div>
					<a class="btn btn-success btn-lg">怒赞一个</a> <a
						class="btn btn-success btn-lg">吐槽一下</a>
					</p>
				</div>
				<div class="row">
				<div class="leaderboard">
					<h1>自我评价</h1>
					<p>1）熟练掌握SQL
						Server2005数据库，掌握SqlServer视图、存储过程等的创建与使用，并了解数据库的一般优化技术。在公司其实做应用项目用到的最多的就是增、删、改、查等操作，而且频率最高的就是联合多表查询。
					</p>
					<p>2）掌握ASP.NET、ADO.NET技术、掌握Nhibernate的框架，熟练写映射文件（xml）。</p>
					<p>3）在公司运用的前台技术都是ExtJs，熟练书写ExtJs前台页面，以前也学习过Jquery技术，基本没有运用到项目上去，只是在校时做课设和毕设时用过。</p>
					<p>4）现在为了拓展自己，自学了JAVA方面的知识，因为我们公司的做项目的NHibernate框架就是由Hibernate框架演变过来的，个人觉得C#跟java的语言差不多，只是运行的平台不一样，主要是学习JDBC+Servlet+xml+Struct2+Spring这几个方面的知识，学习java是为了增强自己的优势，同时也可以拓展自己的知识。</p>
					<p>5）有良好的编程习惯和面向对象编程思想，善于沟通，有很强的团队协作能力。
					<p>
						<a class="btn btn-success btn-lg">怒赞一个</a> <a
							class="btn btn-success btn-lg">吐槽一下</a>
					</p>
					</div>
				</div>
				<div class="row">
					<div class="leaderboard Workexperienceborder">
						<h2>工作经历1</h2>
						<h3>工作单位：广东风华高新科技股份有限公司</h3>
						<p>
							刚到公司，一开始花了差不多两周熟悉公司的框架，之后就跟项目组一起进行开发。主要是用Nhibernate框架，平台是VS2008+SQL
							Server2005，语言是C#语言，前台技术是ExtJs技术，使用的版本控制软件是SVN，熟练使用DevExpress组件。
							主要是做公司的营销平台这块，负责的内容主要有:
						<p>1、销售管理（包括特批价申请、出差管理、订单跟踪和客户来访管理这几块）</p>
						<p>2、物流管理（主要是收货、发货、开票这三大模块），物流管理这块还有一个是手持终端扫描入库和出库（针对物流仓）这块，主要是把程序部署到手持终端进行条码的扫描。物流管理这模块比较特殊，为了符合用户的需求，这一模块是B/S和C/S架构一起实现的，主要是收发货、开票这块是是C/S架构的，物流的查询模块是B/S架构的，这块查询包括物流综合查询、开票申请查询、退货查询、出库查询等。</p>
						</p>


						<p>
							<a class="btn btn-success btn-lg">怒赞一个</a> <a
								class="btn btn-success btn-lg">吐槽一下</a>
						</p>
					</div>
					<!--/span-->
					<div class="leaderboard Workexperienceborder">
						<h2>工作经历2</h2>
						<h3>工作单位：广东化工信息有限公司（华软集团）</h3>
						<p>
							所在的项目组是产品实训小组，主要负责信号模拟系统的时刻表编辑模块的开发，还有南京时刻表转换系统平台的开发和南京应急联动的开发</p>
						<p>
						<p>
							<a class="btn btn-success btn-lg">怒赞一个</a> <a
								class="btn btn-success btn-lg">吐槽一下</a>
						</p>
					</div>
					<!--/span-->
				</div>
				<!--/row-->
				<hr>

			</div>
			<!--/.fluid-container-->
		</div>

	</div>
	<br>
	<br>
	<center>
		<footer>
		<p>&copy; Company 2012</p>
		</footer>
	</center>
</body>
</html>
