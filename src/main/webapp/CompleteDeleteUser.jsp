<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>삭제완료</title>
</head>
<body>
<jsp:include page="DeleteUserController"/>
<script>
    alert("삭제를 완료하였습니다.");
    location.href = "UserManagement.jsp";
</script>
</body>
</html>
