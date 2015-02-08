<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
     <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="${pageContext.request.contextPath}/bootstrap-3.3.1-dist/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/bootstrap-3.3.1-dist/dist/css/Style.css" rel="stylesheet" type="text/css" />
    <script src="${pageContext.request.contextPath}/bootstrap-3.3.1-dist/dist/js/jquery-2.1.3.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/bootstrap-3.3.1-dist/dist/js/bootstrap.min.js" type="text/javascript"></script>
    <title>系统主页</title>
      <style>
        .formstyle{width: 100%;height: 100%;-webkit-border-radius: 10px;-moz-border-radius: 10px;-o-border-radius: 10px; margin-top: 10%;}
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
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span
                        class="icon-bar"></span><span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Project name</a>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#"><span class="glyphicon glyphicon-home">Home</span></a></li>
                    <li><a href="#shop"><span class="glyphicon glyphicon-shopping-cart">Shop</span></a></li>
                    <li><a href="#support"><span class="glyphicon glyphicon-headphones">Support</span></a></li>
                    <li><a href="javascript:;"><span class="glyphicon glyphicon-headphones theme-buy theme-login">
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
                    <form class="theme-signin formstyle" name="loginform" action="" method="post">
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
                            登录</button>&nbsp;&nbsp;&nbsp;&nbsp;
                        <button type="button" class="btn btn-success" id="btnRegister" onclick="javascript:window.location.href='${pageContext.request.contextPath}/servlet/RegisterUIServlet'">
                            注册</button>
                    </div>
                    </form>
                </center>
            </div>
        </div>
        <div class="theme-popover-mask">
        </div>
    </center>
  </body>
</html>
