<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>欢迎首页</title>
  </head>
  
  <body>
     <%request.getRequestDispatcher("/servlet/LoginUIServlet").forward(request, response); %>
  </body>
</html>
