<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>상품 정보 수정</title>
</head>
<body>
<h1>상품 정보 수정</h1>
    <%
        String name = request.getParameter("name");
    %>
    <jsp:include page="ItemController"/>
    <form id="form_signin" action="CompleteUpdateItem.jsp" method="post">
        Name : ${item.name} <br>
        Price : <input type="text" name="price" value="${item.price}"> <br>
        Category : <input type="text" name="category" value="${item.category}"> <br>
        <input type="submit" value="수정완료">
        <input type="button" value="취소" onclick="location.href = 'ItemManagement.jsp'">
        <input style="visibility: hidden" type="text" name="name" value="${item.name}">
    </form>
</body>
</html>
