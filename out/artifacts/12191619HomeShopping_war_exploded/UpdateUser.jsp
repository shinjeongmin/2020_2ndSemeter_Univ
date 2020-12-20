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
    <jsp:include page="/component/HorizNavBar.jsp"/>
    <jsp:include page="UserController"/>
    <form class="form-inline" id="form_signin" style="font-size: 30px" action="CompleteUpdateUser.jsp" method="post">
        <div>ID : ${user.id}</div>
        PWD : <input class="form-control" style="font-size: 20px" type="text" name="pwd" value="${user.pwd}"> <br>
        Name : <input class="form-control" style="font-size: 20px" type="text" name="name" value="${user.name}"> <br>
        money : <input class="form-control" style="font-size: 20px" type="int" name="money" value="${user.money}"> <br>
        <input style="visibility: hidden" type="text" name="id" value="${user.id}">
        <input class="btn btn-info btn-lg" type="submit" value="수정완료">
        <input class="btn btn-info btn-lg" type="button" value="취소" onclick="location.href = 'UserManagement.jsp'">
    </form>
</body>
</html>
