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
            padding-left: 5%;
        }
        .UserInfoSub{
            color: #197c2e;
            font-weight: bold;
        }
        .UserManage{
              background-color: #ffc800;
        }
    </style>
</head>
<body>
<h1>사용자 관리</h1>
<jsp:include page="component/HorizNavBar.jsp"/>

<jsp:include page="AllUserController"/>
<%
    String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");
    List<User> user = (List<User>)request.getAttribute("users");
    int userNum = user.size();
    for(int i=0; i < userNum; i++){
        %>
    <p>
        <div class="ManagementUnit">
        <p class="userInfo text-success ManagementTitle">User Info <%=i+1%></p>
        <a class="ManagementInfo">
            <a class="UserInfoSub"> Id :</a> <%=user.get(i).getId()%>
            <a class="UserInfoSub"> Name : </a> <%=user.get(i).getName()%>
            <a class="UserInfoSub"> Pwd : </a><%=user.get(i).getPwd()%>
            <a class="UserInfoSub"> Money : </a><%=user.get(i).getMoney()%>
            <a class="UserInfoSub"> SignUp date : </a><%=user.get(i).getDateToCalendar()%>
            <a style="padding-right: 50%"></a>
        </a>
        <form class="ManagementBtnMdf">
            <input class="btn btn-info btn-lg ManagementBtnMdf" style="margin-right: .5%" formaction="UpdateUser.jsp" type="submit" value="수정" formmethod="post">
            <input class="btn btn-info btn-lg ManagementBtnMdf" style="margin-right: 0%" formaction="DeleteUser.jsp" type="submit" value="삭제" formmethod="post">
            <input type="text" name="id" value="<%=user.get(i).getId()%>" style="visibility: hidden">
        </form>
</div>
    </p>
<%
    }
%>
</body>
</html>