<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.text.DateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    Enumeration<String> e = request.getParameterNames();
    out.println("Name : "+request.getParameter("name"));
    out.println("<br>");
    out.println("category : " + request.getParameter("category"));
    out.println("<br>");
    out.println("price : " + request.getParameter("price"));
    out.println("<br>");
    Date Today = new Date();
    out.println("date : " + Today);
    out.println("<br>");
    request.setAttribute("date", Today);
%>
<br><br>
<jsp:include page="UpdateItemController" flush="false"/>
${item} <br>
성공여부 :${issuccess}
<br>
aaa
</body>
</html>
