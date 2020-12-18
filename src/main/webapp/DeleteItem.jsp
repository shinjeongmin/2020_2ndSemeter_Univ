<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>상품 정보 삭제</title>
</head>
<body>
<jsp:include page="ItemController"/>
<form id="frm" action="CompleteDeleteItem.jsp" method="post" style="visibility: hidden">
    <input type="text" name="name" value="${item.name}">
</form>
<script>
    var result = confirm("Item : " + "${item.name} 를 " +"삭제하시겠습니까?");
    if(result == true){
        document.getElementById("frm").action = "CompleteDeleteItem.jsp";
        document.getElementById("frm").submit();
    }else{
        location.href = "ItemManagement.jsp";
    }
</script>
</body>
</html>
