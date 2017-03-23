<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  	<script type="text/javascript">
 function check(){
		//1.创建XMLHttpRequest对象
	var xmlhttp;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	//2.向服务器发请求
	var username = document.getElementById("username").value;
	xmlhttp.open("get", "AjaxServlet?username=" + username, true);
	xmlhttp.send();
	//3.设置回调函数
	xmlhttp.onreadystatechange = function() {
		//xmlhttp.readyState == 4 && xmlhttp.status == 200这句话什么意思
		//表示服务器处理成功
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("show").innerHTML="<font color='red'>"+xmlhttp.responseText+"</font>";
		}
	  };
	}
</script>
  <body>
    	用户名：<input type="text" id="username" onblur="check()"><span id="show"></span>
  </body>
</html>
