<%@ page import="java.util.List" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="com.huai.model.User" %>
<%@ page import="com.huai.model.Item" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    String id = request.getParameter("id");
%>
<!DOCTYPE html>
<html>
<head>
    <title>상품관리 페이지</title>
    <style>
        .ItemInfo {
            color: seagreen;
            font-size: 30px;
        }
        .ItemInfoSub{
            color: #197c2e;
            font-weight: bold;
        }
        .ItemManage{
            background-color: #ffc800;
        }
    </style>
</head>
<body>
<h1>상품 관리</h1>
<jsp:include page="component/HorizNavBar.jsp"/>
<jsp:include page="AllItemController"/>
<br>
<%
    List<Item> item = (List<Item>)request.getAttribute("items");
    int itemNum = item.size();
    for(int i=0; i < itemNum; i++){
%>
<p>
    <div class="ManagementUnit">
        <p class="ItemInfo text-success ManagementTitle">Item<%=i+1%></p>
        <a class="ManagementInfo">
            <a class="ItemInfoSub"> Name : </a> <%=item.get(i).getName()%>
            <a class="ItemInfoSub"> Price : </a><%=item.get(i).getPrice()%>
            <a class="ItemInfoSub"> Category : </a><%=item.get(i).getCategory()%>
            <a style="padding-right: 70%"></a>
        </a>
        <form class="ManagementBtnMdf">
            <input class="btn btn-info btn-lg ManagementBtnMdf" style="margin-right: .5%;" formaction="UpdateItem.jsp" type="submit" value="수정" formmethod="post">
            <input class="btn btn-info btn-lg ManagementBtnMdf" style="margin-right: 0%" formaction="DeleteItem.jsp" type="submit" value="삭제" formmethod="post">
            <input type="text" name="name" value="<%=item.get(i).getName()%>" style="visibility: hidden">
        </form>
    </div>
</p>
<%
    }
%>
</body>
</html>