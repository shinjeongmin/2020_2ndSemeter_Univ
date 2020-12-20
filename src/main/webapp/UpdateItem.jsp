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
<jsp:include page="/component/HorizNavBar.jsp"/>
    <jsp:include page="ItemController"/>
    <form class="form-inline" id="form_signin" style="font-size: 30px" action="CompleteUpdateItem.jsp" method="post">
        <div >Name : ${item.name}</div>
        Price : <input class="form-control" style="font-size: 20px" type="text" name="price" value="${item.price}"> <br>
        Category : <input class="form-control" style="font-size: 20px" type="text" name="category" value="${item.category}"> <br>
        <input style="visibility: hidden" type="text" name="name" value="${item.name}">
        <input class="btn btn-info btn-lg" type="submit" value="수정완료">
        <input class="btn btn-info btn-lg" type="button" value="취소" onclick="location.href = 'ItemManagement.jsp'">
    </form>
</body>
</html>
