<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>로그인 페이지</title>
    <style>
        .SignIn{
            background-color: #ffc800;
        }
    </style>
</head>
<script>

</script>
<body>
<h1>로그인</h1>

<jsp:include page="component/HorizNavBar.jsp"/>

<form class="form-inline" id="form_signin" action="CompleteSignIn.jsp" method="post">
    ID : <input class="form-control" style="margin-bottom: 10px" id="ID" type="text" name="id"> <br>
    PWD : <input class="form-control" style="margin-right: 22px" type="text" name="pwd"> <br>
    <br>
    <input class="btn btn-info btn-lg" type="submit" value="확인">
</form>
</body>
</html>