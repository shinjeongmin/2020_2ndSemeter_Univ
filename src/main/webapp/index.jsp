<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%--JspRuntimeLibrary.URLEncode("?????.",  request.getCharacterEncoding())--%>

<jsp:include page="AllUserController"></jsp:include>
${users}
<br><br>
a
<form id="formsubmit" action="test.jsp" method="post">
    <input style="display: none" type="text" name="id" value="a">
</form>
<script>
    this.document.getElementById("formsubmit").submit();
</script>
</body>
</html>