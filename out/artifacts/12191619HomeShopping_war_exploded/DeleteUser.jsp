<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>사용자 정보 삭제</title>
</head>
<body>
<jsp:include page="UserController"/>
<form id="frm" action="CompleteDeleteUser.jsp" method="post" style="visibility: hidden">
    <input type="text" name="id" value="${user.id}">
</form>
<script>
    var result = confirm("UserID : " + "${user.id} 를 " +"삭제하시겠습니까?");
    if(result == true){
        document.getElementById("frm").action = "CompleteDeleteUser.jsp";
        document.getElementById("frm").submit();
    }else{
        location.href = "UserManagement.jsp";
    }
</script>
</body>
</html>
