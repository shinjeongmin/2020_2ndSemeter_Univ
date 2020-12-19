<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/css/bootstrap.css">
    <style>
        @font-face {
            font-family: 'BMJUA_ttf';
            src: url("../fonts/BMJUA_ttf.ttf") format('truetype');
        }
        h1{
            font-size: 80px;
            margin: 40px;
        }
        ul {
            list-style-type : none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #ffa500;
        }
        li {
            display: inline-block;
            /*float: left;*/
            border-right: solid 3px #ffb541;
            padding-left: 20px;
            padding-right: 20px;
        }
        li:hover{
            background-color: #ffc800;
            color: white;
        }
        li:last-child{border-right: none;}
        li a {
            display: block;
            /*background-color: #ffa500;*/
            color: white;
            font-size: x-large;
            padding: 10px;
            text-decoration: none;
            text-align: center;
            font-weight: bold;
        }
        li a:hover{
            cursor: pointer;
            color: #e8e8e8;
        }
        body{
            text-align: center;
            background-color: #ffdca7;
            font-family: BMJUA_ttf;
            font-size: 20px;
        }
        .ManagementUnit{
            margin-right: 50px;
            margin-left: 50px;
            padding-bottom: 50px;
            border: solid;
            border-color: #ffa500;
            border-radius: 30px;
            border-bottom-left-radius: 0px;
        }
        .ManagementTitle{
            margin-top: 20px;
            margin-right: 80%;
        }
        .ManagementInfo{
            text-align: left;
            margin-left: 10%;
        }
        .ManagementBtnMdf{
            text-align: right;
        }
        .InfoSub{
            color: #197c2e;
            font-weight: bold;
        }
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>
        function GotoMainpage(){
            document.getElementById("frm").action = "../index.jsp";
            document.getElementById("frm").submit();
        }
        function GotoSignInpage(){
            document.getElementById("frm").action = "../SignIn.jsp";
            document.getElementById("frm").submit();
        }
        function GotoSignUppage(){
            document.getElementById("frm").action = "../SignUp.jsp";
            document.getElementById("frm").submit();
        }
        function GotoShoppage(){
            document.getElementById("frm").action = "../ShopList.jsp";
            document.getElementById("frm").submit();
        }
        function GotoUserManagepage(){
            document.getElementById("frm").action = "../UserManagement.jsp";
            document.getElementById("frm").submit();
        }
        function GotoItemManagepage(){
            document.getElementById("frm").action = "../ItemManagement.jsp";
            document.getElementById("frm").submit();
        }
    </script>
</head>
<body>
<%
    String id = request.getParameter("id");
%>
<ul>
    <li class="Home"><a onclick="GotoMainpage()">Home</a></li>
    <li class="Shopping"><a onclick="GotoShoppage()">Shopping</a></li>
    <li class="SignIn"><a onclick="GotoSignInpage()">SignIn</a></li>
    <li class="SignUp"><a onclick="GotoSignUppage()">SignUp</a></li>
    <li class="UserManage"><a onclick="GotoUserManagepage()">User Management</a></li>
    <li class="ItemManage"><a onclick="GotoItemManagepage()">Item Management</a></li>
</ul>
<form id="frm" action="../index.jsp" method="post" style="visibility: hidden">
    <input type="text" name="id" value="<%=id%>">
</form>

<script type="text/javascript" src="/js/bootstrap.js"></script>
</body>
</html>
