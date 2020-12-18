<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script>
    </script>
</head>
<body>
    <%
        if(session.getAttribute("id") == null){
            response.sendRedirect("index.jsp");
        }
    %>
</body>
</html>
