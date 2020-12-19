<%@ page import="com.huai.model.Item" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String id = request.getParameter("id");
    System.out.println("구매 페이지");
%>
<html>
<head>
    <title>쇼핑 페이지</title>
    <style>
        .ItemListInfo{
            color: seagreen;
            font-size: 30px;
        }
    </style>
</head>
<body>
<h1>상품 구매 목록</h1>
<jsp:include page="component/HorizNavBar.jsp"/>
<jsp:include page="AllItemController"/>
<%
    if(id == null || id == "" || id.equals("null")){

%>
<script>
    alert("로그인 후 이용할 수 있습니다.");
    history.back();
</script>
<%
    }

    List<Item> item = (List<Item>)request.getAttribute("items");
    int itemNum = item.size();
    for(int i=0; i < itemNum; i++){
%>
<p>
    <div class="ManagementUnit">
        <p class="ItemListInfo text-success ManagementTitle">Item<%=i+1%></p>
        <a class="ManagementInfo">
            <a class="InfoSub"> Name : </a> <%=item.get(i).getName()%>
            <a class="InfoSub"> Price : </a><%=item.get(i).getPrice()%>
            <a class="InfoSub"> Category : </a><%=item.get(i).getCategory()%>
            <a style="padding-right: 70%"></a>
        </a>
        <form class="ManagementBtnMdf">
            <input type="text" name="itemname" value="<%=item.get(i).getName()%>" style="visibility: hidden">
            <input type="text" name="userid" value="<%=id%>" style="visibility: hidden">
            <input  class="btn btn-info btn-lg ManagementBtnMdf" style="margin-right: 25%"  formaction="PurchaseItem.jsp" type="submit" value="구매하기" formmethod="post">
        </form>
    </div>
</p>
<%
    }
%>
</body>
</html>
