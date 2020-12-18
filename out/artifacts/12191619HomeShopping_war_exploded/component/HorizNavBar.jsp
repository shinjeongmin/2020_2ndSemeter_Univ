<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        ul {
            list-style-type : none;
            margin: 0;
            padding: 0;
            overflow: hidden;
        }
        li {
            float: left;
            border-right: solid 3px #ffb541;
        }
        li:last-child{border-right: none;}
        li a {
            display: block;
            background-color: #ffa500;
            color: white;
            padding: 8px;
            text-decoration: none;
            text-align: center;
            font-weight: bold;
        }
        li a:hover{
            cursor: pointer;
        }
    </style>
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
        function GotoManagepage(){
            document.getElementById("frm").action = "../Management.jsp";
            document.getElementById("frm").submit();
        }
    </script>
</head>
<body>
<%
    String id = request.getParameter("id");
%>
<ul>
    <li><a onclick="GotoMainpage()">Home</a></li>
    <li><a onclick="GotoShoppage()">Shopping</a></li>
    <li><a onclick="GotoSignInpage()">SignIn</a></li>
    <li><a onclick="GotoSignUppage()">SignUp</a></li>
    <li><a onclick="GotoManagepage()">User Management</a></li>
</ul>
<form id="frm" action="../index.jsp" method="post" style="visibility: hidden">
    <input type="text" name="id" value="<%=id%>">
</form>
</body>
</html>
