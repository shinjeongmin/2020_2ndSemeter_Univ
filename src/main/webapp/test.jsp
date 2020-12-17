<%@ page import="java.util.Enumeration" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
</head>
<body>
모든 유저 정보 <br>
<jsp:include page="AllUserController" flush="false"/>
${users}
<br><br>
선택 유저 정보 <br>
<a href="">
<jsp:include page="UserController?id=eee"></jsp:include>
</a>
${user}
<br><br>
아이템 정보
<jsp:include page="ItemController?name=water" flush="false"/>
${item}
<br>
<br>
모든 아이템 정보
<jsp:include page="AllItemController"/>
${items}
<br>
<br>
<hr>
회원가입
<form action="test_signup.jsp" method="post">
    ID : <input type="text" name="id"> <br>
    PWD : <input type="password" name="pwd"> <br>
    Name : <input type="text" name="name"> <br>
    money : <input type="int" name="money"> <br>
    <input type="submit" value="확인"> <br>
</form>

<br> <br>

회원정보수정
<form action="test_modify_userinfo.jsp" method="post">
    ID : <input type="text" name="id"> <br>
    PWD : <input type="password" name="pwd"> <br>
    Name : <input type="text" name="name"> <br>
    money : <input type="number" name="money"> <br>
    <input type="submit" value="확인"> <br>
</form>

<br> <br>

회원탈퇴
<form action="test_delete_userinfo.jsp">
    ID : <input type="text" name="id"> <br>
    PWD : <input type="password" name="pwd"> <br>
    <input type="submit" value="확인"> <br>
</form>

<br> <br>
상품추가
<form action="test_insert_iteminfo.jsp">
    Name : <input type="text" name="name"> <br>
    category : <input type="text" name="category"> <br>
    price : <input type="number" name="price"> <br>
    <input type="submit" value="확인"> <br>
</form>
<br> <br>
상품변경
<form action="test_update_iteminfo.jsp">
    Name : <input type="text" name="name"> <br>
    category : <input type="text" name="category"> <br>
    price : <input type="number" name="price"> <br>
    <input type="submit" value="확인"> <br>
</form>
<br> <br>
상품삭제
<form action="test_delete_iteminfo.jsp">
    Name : <input type="text" name="name"> <br>
    category : <input type="text" name="category"> <br>
    price : <input type="number" name="price"> <br>
    <input type="submit" value="확인"> <br>
</form>
<br> <br>
</body>
</html>