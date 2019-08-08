<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'b.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
 <style type="text/css">
body form div h3 {
	text-align: center;
	color: #03F;
}
.wq {
	text-align: center;
}
</style>
  </head>
  
  <body>
  <form action="zhuce.action" method="post"> 
<div>
  <h3>用户注册界面</h3>
</div>
<div class="wq">
用户名：<input type="text" name="name" size="20"><br />
密码：<input name="password" type="password" size="20" /><br />
<input name="" type="submit" value="提交" />  
<input name="" type="reset" value="重置" />
</div>
</form>
  </body>
</html>
