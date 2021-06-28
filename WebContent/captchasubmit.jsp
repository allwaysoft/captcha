<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");
response.setContentType("text/html; charset=UTF-8");
%>

<%@ page import="nl.captcha.Captcha"%>

<%
Captcha captcha = (Captcha) session.getAttribute(Captcha.NAME);
request.setCharacterEncoding("UTF-8");
String answer = request.getParameter("answer");
if (captcha.isCorrect(answer)) {
%>
<b>验证码正确！</b>
<%
} else {
%>
<b>验证码错误！</b>
<%
}
%>


