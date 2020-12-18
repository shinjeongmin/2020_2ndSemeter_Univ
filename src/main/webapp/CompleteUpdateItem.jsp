<%@ page import="com.huai.model.Item" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>상품 정보 수정 완료</title>
</head>
<body>
<jsp:include page="ItemController"/>
    <%
        String name = request.getParameter("name");
        String price = request.getParameter("price");
        String category = request.getParameter("category");
        Item item = (Item)request.getAttribute("item");
        Date date = item.getDate();
    %>
<jsp:include page="UpdateItemController"/>
<script>
    alert("수정이 완료되었습니다.");
    location.href = "ItemManagement.jsp";
</script>
</body>
</html>
