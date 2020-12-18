<%@ page import="com.huai.model.Item" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String id = request.getParameter("id");
%>
<html>
<head>
    <title>쇼핑 페이지</title>
</head>
<body>
<h1>Item List</h1>
<jsp:include page="component/HorizNavBar.jsp"/>
<jsp:include page="AllItemController"/>
<%
    if(id == null){

%>
<script>
    alert("로그인하세요.");
</script>
<%
    }

    List<Item> item = (List<Item>)request.getAttribute("items");
    int itemNum = item.size();
    for(int i=0; i < itemNum; i++){
%>

Item<%=i+1%> <br>
<a class="ItemInfoSub"> Name : </a> <%=item.get(i).getName()%>
<a class="ItemInfoSub"> Price : </a><%=item.get(i).getPrice()%>
<a class="ItemInfoSub"> Category : </a><%=item.get(i).getCategory()%> <br> <br>
<form>
    <input formaction="PurchaseItem.jsp" type="submit" value="구매하기" formmethod="post">
    <input type="text" name="itemid" value="<%=item.get(i).getItemId()%>" style="visibility: hidden">
</form>
<%
    }
%>
</body>
</html>
