<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>注册页面</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="${pageContext.request.contextPath}/bootstrap-3.3.1-dist/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="${pageContext.request.contextPath}/bootstrap-3.3.1-dist/dist/js/jquery-2.1.3.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/bootstrap-3.3.1-dist/dist/js/bootstrap.min.js" type="text/javascript"></script>
    
    
  </head>
  
  <body>
      <center>
        <form class="bs-example bs-example-form" role="form" action="${pageContext.request.contextPath}/servlet/RegisterServlet" method="POST" >
            <div class="form-group">
                <h3><strong>用户注册</strong></h3>
            </div>
            <div class="input-group">
                <span class="input-group-addon" style="width:35%">用户名</span>
                <input type="text" class="form-control" name="username" value="${form.username}" placeholder="请输入用户名">
                
            </div>
            <span>${form.errors.username}</span>
            <br>
            
               <div class="input-group">
                <span class="input-group-addon" style="width:35%">密码</span>
                <input type="text" class="form-control" name="password" value="${form.password}" placeholder="请输入密码">               
            </div>
             <span>${form.errors.password}</span>
            <br>
            
               <div class="input-group">
                <span class="input-group-addon" style="width:35%">确认密码</span>
                <input type="text" class="form-control" name="password2" value="${form.password2}" placeholder="请输入确认密码">                
            </div>
            <span>${form.errors.password2}</span>
            <br>
            
               <div class="input-group">
                <span class="input-group-addon" style="width:35%">邮箱</span>
                <input type="email" class="form-control" name="email" value="${form.email}" placeholder="请输入email">
            </div>
            <br>
            
              <div class="input-group">
                <span class="input-group-addon" style="width:35%">出生日期</span>
                <input type="text" class="form-control" id="datebirthday" name="birthday" value="${form.birthday}" placeholder="请输入出生日期" >
            </div>
            <br>
                
            <div class="input-group">
                <span class="input-group-addon" style="width:35%">昵称</span>
                <input type="text" class="form-control" name="nickname" value="${form.nickname}" placeholder="请输入昵称">  
           
            </div>
            <span>${form.errors.nickname}</span>
            <br>

            <div class="form-group has-success">
                <input type="checkbox" id="chbagreement"/>
                <a href="${pageContext.request.contextPath }/servlet/ServiceAgreementServlet">已经认真阅读了服务协议</a>
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-success " id="subregister" disabled="false">提交注册</button>
            </div>
        </form>
        </center>
        <script type="text/javascript">
            $(function () {
                var regBtn = $("#subregister");
                $("#chbagreement").change(function () {
                    var that = $(this);
                    that.prop("checked", that.prop("checked"));
                    if (that.prop("checked")) {
                        regBtn.prop("disabled", false)
                    } else {
                        regBtn.prop("disabled", true)
                    }
                });
            });
        </script>
  </body>
</html>
