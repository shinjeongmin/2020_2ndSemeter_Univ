<%@ page import="com.huai.model.Item" %>
<%@ page import="java.util.List" %>
<%@ page import="com.huai.model.UserPurchase" %>
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
    boolean islogin = false;
%>
<h1>Main Page</h1>
<jsp:include page="component/HorizNavBar.jsp"/>

<jsp:include page="UserController"/>
<%
    if(id == null || id == "" || id.equals("null")){
        islogin = false;
    }else{
        islogin = true;
    }
        request.setAttribute("islogin", islogin);
%>
<a id="logincheck"></a>
<br><br><a id="Welcome">${user.name}님의 구매목록</a> <br><br>
<script>

 var userInfo = "${user}";
 if(userInfo === ""){
     document.getElementById("logincheck").innerHTML = "로그인하세요";
     document.getElementById("Welcome").innerHTML = "";
 }else{
     document.getElementById("logincheck").innerHTML  = ("${user.name}" + "님 안녕하세요?");
 }
</script>
<%
%>
        <jsp:include page="UserPurchaseItemController"/>
    <%
        if(!islogin){
    %>
    <script>
        // alert("로그인 하세요 ");
    </script>
    <%
        }
        else{%>
<script>
    <%--alert("로그인됨 " + "<%=id%>");--%>
</script>
    <%
        List<UserPurchase> item = (List<UserPurchase>)request.getAttribute("userPurchases");
        int itemNum = item.size();
        for(int i=0; i < itemNum; i++){
    %>
    구매목록 <%=i+1%> <br>
    <a class="ItemInfoSub"> Name : </a> <%=item.get(i).getItemname()%> <br> <br>
    <%
        }
        }%>
</body>
</html>