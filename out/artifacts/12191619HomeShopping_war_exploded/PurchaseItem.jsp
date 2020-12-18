<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>사용자 정보 수정</title>
</head>
<body>
<h1>사용자 정보 수정</h1>
<%
    String id = request.getParameter("id");
%>
<jsp:include page="UserController"/>
<form id="form_signin" action="CompleteUpdateUser.jsp" method="post">
    ID : ${user.id} <br>
    PWD : <input type="password" name="pwd" value="${user.pwd}"> <br>
    Name : <input type="text" name="name" value="${user.name}"> <br>
    money : <input type="int" name="money" value="${user.money}"> <br>
    <input type="submit" value="수정완료">
    <input type="button" value="취소" onclick="location.href = 'UserManagement.jsp'">
    <input style="visibility: hidden" type="text" name="id" value="${user.id}">
</form>
</body>
</html>
