<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
   <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="${pageContext.request.contextPath}/bootstrap-3.3.1-dist/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="${pageContext.request.contextPath}/bootstrap-3.3.1-dist/dist/js/jquery-2.1.3.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/bootstrap-3.3.1-dist/dist/js/bootstrap.min.js" type="text/javascript"></script>
    <title>登录页面</title>
	
  </head>
  
  <body>
    <center>
        <form class="bs-example bs-example-form" role="form" action="./controller/register.aspx" method="POST" >
            <div class="form-group">
                <h3><strong>用户登录</strong></h3>
            </div>
            <div class="input-group">
                <span class="input-group-addon" style="width:35%">用户名</span>
                <input type="text" class="form-control" placeholder="请输入用户名">
            </div>
            <br>
            
               <div class="input-group">
                <span class="input-group-addon" style="width:35%">密码</span>
                <input type="text" class="form-control" placeholder="请输入密码">
            </div>
            <br>
            <div class="form-group">
                <button type="submit" class="btn btn-success " id="subregister" >登录</button>&nbsp;&nbsp;&nbsp;&nbsp;
                <button type="button" class="btn btn-success " id="btnRegister" onClick="javascript:window.location.href='${pageContext.request.contextPath}/servlet/RegisterUIServlet'" >注册</button>
            </div>
            </form>
  </body>
</html>
