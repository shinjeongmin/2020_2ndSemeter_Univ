<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>메인 페이지</title>

</head>
<body>
<%
    String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");
%>
<h1>Main Page</h1>
<jsp:include page="component/HorizNavBar.jsp"/>

<jsp:include page="UserController"/>
<script>

 var userInfo = "${user}";
 if(userInfo === ""){
     document.write("로그인하세요.");
 }else{
     document.write("${user.name}" + "님 안녕하세요?");
 }
</script>
</body>
</html>