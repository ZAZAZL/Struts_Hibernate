<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'a.jsp' starting page</title>
    
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
	background-image: url(C:\Users\Administrator\Desktop\简单的博客系统+hibernate+strust2\WebRoot\a\q.jpg);
	height: 500px;
	width: 1024px;
	color: #0FF;
}
.b {
	float: left;
	height: 150px;
	width: 200px;
	margin-top: 30px;
	margin-left: 30px;
}
.c {
	height: 300px;
	width: 300px;
	float: right;
	margin-top: 50px;
	margin-right: 80px;
}
.d {

	margin-top: 30px;
	margin-right: auto;
	margin-left: auto;
}
.e{

	margin-top: 30px;
	margin-right: auto;
	margin-left: auto;
}
.f{

	margin-top: 30px;
	margin-right: auto;
	margin-left: auto;
	text-align: center;

}
h1 {
	padding-top: 20px;
	text-align: center;
}
.g {
	font-size: 18px;
	color: #F00;
	height: 50px;
	width: 1024px;
	background-color: #999;
	text-align: center;
}
.qq {
	background-color: #39F;
	height: 80px;
	width: 1024px;
}
.a .c .f a {
	color: #FFF;
}
.a .c .f a:hover {
	color: #F00;
}
</style>
<script type="text/javascript">

  function reloadcode(obj,base){
  var rand=new Date().getTime(); //这里用当前时间作为参数加到url中，是为了使URL发生变化，这样验证码才会动态加载，
            //只是一个干扰作用，无确实意义，但却又非常巧妙，呵呵
  obj.src=base+"testLogin.action?abc="+rand; //其实服务器端是没有abc的字段的。
  }

</script>
  </head>
  
  <body>
    <form action="denlu.action" method="post">
<div class="qq">
    <h1>博客世界</h1>
</div>
<div class="a">
    <div class="c">
     <h1>登入博客 </h1>
    <div class="d">用户名：<input name="name" type="text" size="15" /></div>
    <div class="e">密  码：
      <input name="password" type="password" size="15" /></div><br>
      验证码：<input type="text" name="chknumber" size="15" ><img title="看不清楚请点击这里" width="50" height="20" src="<%=basePath%>testLogin.action" id="safecode" onclick="reloadcode(this,'<%=basePath%>')" />
    <div class="f"><input name="" type="submit" value="登入" />    <input name="" type="reset" value="重置" /><a href="b.jsp">注册</a></div>
    </div>
  </div>
  <div class="g">
  <br />版权所有&违者必究</div>
</form>
  </body>
</html>
