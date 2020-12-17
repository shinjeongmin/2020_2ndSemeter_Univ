<%@ page import="java.util.Date" %>
<%@ page import="java.text.DateFormat" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>회원가입 완료</title>
</head>
<body>
<%
    Date Today = new Date();
    request.setAttribute("date", Today);
    String id = request.getParameter("id");
%>
<h1>회원가입하기</h1>
<jsp:include page="component/HorizNavBar.jsp"/>
<jsp:include page="InsertUserController"/>
<div>환영합니다! <%=id%> 님!</div>
<form action="SignIn.jsp" method="post">
    <input style="visibility: hidden" type="text" name="id" value=""> <br>
    <input type="submit"
           style="font-weight: bold;
           text-decoration: none;
           color: black"
           value="로그인 하기"
    >
</form>
</body>
</html>