<%@ page import="java.util.List" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="com.huai.model.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>유저관리 페이지</title>
    <style>
        .userInfo {
            color: seagreen;
            font-size: 30px;
        }
        .UserInfoSub{
            color: #197c2e;
            font-weight: bold;
        }
    </style>
</head>
<body>
<h1>User Management</h1>
<jsp:include page="component/HorizNavBar.jsp"/>

<jsp:include page="AllUserController"/>
<%
    String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");
    List<User> user = (List<User>)request.getAttribute("users");
    int userNum = user.size();
    for(int i=0; i < userNum; i++){
        %>
<a class="userInfo">
    User Info <%=i+1%> <br>
    <a class="UserInfoSub">Id :</a> <%=user.get(i).getId()%>
    <a class="UserInfoSub">Name : </a> <%=user.get(i).getName()%>
    <a class="UserInfoSub"> Pwd : </a><%=user.get(i).getPwd()%>
    <a class="UserInfoSub"> Money : </a><%=user.get(i).getMoney()%>
    <a class="UserInfoSub"> SignUp date : </a><%=user.get(i).getDateToCalendar()%> <br> <br>
    <form>
        <input formaction="UpdateUser.jsp" type="submit" value="수정" formmethod="post">
        <input formaction="DeleteUser.jsp" type="submit" value="삭제" formmethod="post">
        <input type="text" name="id" value="<%=user.get(i).getId()%>" style="visibility: hidden">
    </form>
</a>
<%
    }
%>
</body>
</html>