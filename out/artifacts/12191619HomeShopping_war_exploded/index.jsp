<%@ page import="com.huai.model.Item" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>메인 페이지</title>

</head>
<body>
<%
    String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");
%>
<h1>Main Page</h1>
<jsp:include page="component/HorizNavBar.jsp"/>

<jsp:include page="UserController"/>
<script>

 var userInfo = "${user}";
 if(userInfo === ""){
     document.write("로그인하세요.");
 }else{
     document.write("${user.name}" + "님 안녕하세요?");
 }
</script>
<br><br>
<a>${user.name}님의 구매목록</a> <br><br>
<jsp:include page="UserPurchaseItemController"/>
<%
    if(id == null){
        %>
<script>
    alert("로그인 하세요 ");
</script>
    <%
    }
    else{%>
<script>
    alert("<%=id%>" + "로 로그인 됨 ");
</script>
    <%
    List<Item> item = (List<Item>)request.getAttribute("itemList");
    int itemNum = item.size();
    for(int i=0; i < itemNum; i++){
        %>
    구매목록 <%=i+1%> <br>
<%--    <a class="ItemInfoSub"> Name : </a> <%=item.get(i).getName()%>--%>
<%--    <a class="ItemInfoSub"> Price : </a><%=item.get(i).getPrice()%>--%>
<%--    <a class="ItemInfoSub"> Category : </a><%=item.get(i).getCategory()%> <br> <br>--%>
    <%
        }
    }%>
</body>
</html>