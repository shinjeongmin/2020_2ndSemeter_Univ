<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>로그인 페이지</title>
    <%
        String id = request.getParameter("id");
        String pwd = request.getParameter("pwd");
    %>
</head>
<body>
<h1>로그인 확인</h1>

<jsp:include page="component/HorizNavBar.jsp"/>
<jsp:include page="UserController"/>

<form id="form_signin" action="index.jsp" method="post">
    ID : <input id="ID" type="text" name="id"> <br>
    PWD : <input type="password" name="pwd"> <br>
    <input type="submit" value="확인">
</form>
<script>
    <%--아이디와 비번이 맞지 않으면 로그인 페이지로 돌려보냄--%>
    var userId = "${user.id}";
    var userPwd = "${user.pwd}";
    if(userPwd == "<%=pwd%>") {
        alert("로그인 성공");
        document.getElementById("frm").action = "../index.jsp";
        document.getElementById("frm").submit();
    }else{
        alert("아이디 혹은 비밀번호가 맞지 않습니다.");
        location.href = "SignIn.jsp";
    }
</script>

<form id="frm" action="../index.jsp" method="post" style="visibility: hidden">
    <input type="text" name="id" value="<%=id%>">
</form>
</body>
</html>