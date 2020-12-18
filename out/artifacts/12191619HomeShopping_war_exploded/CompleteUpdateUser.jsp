<%@ page import="com.huai.model.User" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>사용자 정보 수정 완료</title>
</head>
<body>
<jsp:include page="UserController"/>
    <%
        String id = request.getParameter("id");
        String pwd = request.getParameter("pwd");
        String name = request.getParameter("name");
        String money = request.getParameter("money");
        User user = (User)request.getAttribute("user");
        Date date = user.getDate();
    %>
<jsp:include page="UpdateUserController"/>
<script>
    alert("수정이 완료되었습니다.");
    location.href = "Management.jsp";
</script>
</body>
</html>
