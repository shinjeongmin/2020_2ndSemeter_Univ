<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>구매완료</title>
</head>
<body>
<%
    String id = request.getParameter("userid");
%>
    <h1>구매완료</h1>
    <jsp:include page="component/HorizNavBar.jsp"/>
    <jsp:include page="InsertUserPurchaseItemController"/>
    <div>구매가 완료되었습니다.</div>
    <form action="ShopList.jsp" method="post">
        <input style="visibility: hidden" type="text" name="id" value="<%=id%>"> <br>
        <input type="submit"
               style="font-weight: bold;
           text-decoration: none;
           color: black"
               value="돌아가기"
        >
    </form>
</body>
</html>
