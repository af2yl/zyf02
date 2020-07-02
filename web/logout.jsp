<%@ page import="java.util.List" %><
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        String name = (String) session.getAttribute("name");
        session.invalidate();
        response.sendRedirect("login.html");
    %>
</body>
</html>
