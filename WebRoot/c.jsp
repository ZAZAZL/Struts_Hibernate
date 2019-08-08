<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> 

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'c.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
 <style type="text/css">
.a {
	font-size: 18px;
	text-align: center;
	font-style: italic;
}
body {
	background-color: #999;
}
body a {
	color: #FF0;
	text-decoration: none;
}
body a:hover {
	color: #F00;
}
</style>
  </head>
  
  <body>
<div class="a">
  <h4>博客管理系统后台</h4>
</div>
<p>欢迎你：${sessionScope.user.name}</p>
<a href="d.jsp">发布博文</a><br />
  <a href="e.jsp">博文管理</a><br />
  <a href="*">用户管理</a><br />
  </body>
</html>
