<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");
response.setContentType("text/html; charset=UTF-8");
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<META http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Simple CAPTCHA Example</title>
<link href="styles.css" type="text/css" rel="stylesheet" />
<script type="text/javascript">
	function reloadImg() {
		var timestamp = new Date().getTime();
		document.getElementById("captcha").src = "simpleCaptcha.jpg?"
				+ timestamp;
	}
</script>
</head>
<body>
	<center>
		<h3>验证码测试</h3>

		<form action="captchasubmit.jsp" method="post">

			<img id="captcha" src="simpleCaptcha.jpg" /><br /> <a
				href="javascript:reloadImg()">刷新验证码</a> <br /> <input type="text"
				name="answer" /><br> <input type="submit" value="提交">
		</form>
	</center>
</body>
</html>
