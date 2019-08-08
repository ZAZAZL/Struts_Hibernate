<%@ page language="java" import="java.util.*,javax.servlet.ServletContext" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="we.BDAO,we.Blog,we.BlogDAO,we.user" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'e.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <table width="539" border="1">
  <tr>
  <td>id:</td>
  <td>title:</td>
  <td>content:</td>
  <td>userid:</td>
  </tr>
  <%
  	
      BlogDAO blogDao = new BlogDAO();
      List<Blog> list=blogDao.list(1);
      for(Blog blog1:list){
  %>
  <tr>
  <td><%out.print(blog1.getId()); %></td>
  <td><%out.print(blog1.getTitle()); %></td>
  <td><%out.print(blog1.getContent()); %></td>
  <td><%out.print(blog1.getUserId()); %></td>
  </tr>
  <%} %>
  </table>
  </body>
</html>
