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
    out.println("Id : "+request.getParameter("id"));
    out.println("<br>");
    out.println("pwd : " + request.getParameter("pwd"));
    out.println("<br>");
    out.println("name : " + request.getParameter("name"));
    out.println("<br>");
    out.println("money : " + request.getParameter("money"));
    out.println("<br>");
    Date Today = new Date();
    DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
    String str_today = format.format(Calendar.getInstance().getTime());
    out.println("date : " + Today);
    out.println("<br>");
    request.setAttribute("date", Today);
%>
<br><br>
<jsp:include page="UpdateUserController" flush="false"/>
바뀐 행의 개수 :
<script>
    document.write(${issuccess});

</script>
<br>
aaa
</body>
</html>
