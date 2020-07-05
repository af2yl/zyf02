<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script language="javascript"></script>
<html>
<head>
    <title>超级市场</title>
</head>
<body>
<div align="right">
    当前登录用户<%=session.getAttribute("name")%>;
    <%
        if (session.getAttribute("name") != null) {
            out.println("<a href='logout.jsp'>注销</a>");
        } else {
            out.println("<a href='login.html'>请登录</a>");
        }
    %>
</div>
<div align="center">
    <h1>超级市场</h1>
    <p>开始选购商品并填写自己所购买的数量</p>
    <form action="order.jsp" method="post">
        <table style="border:1px solid green;" cellpadding="0" border="1" align="center">
            <thead>
            <tr>
                <th>商品编号</th>
                <th>商品名</th>
                <th>单价</th>
                <th>购买数量</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>1</td>
                <td><img src="${pageContext.request.contextPath}/images/notebook.jpg" height="100" width="100"/>笔记本</td>
                <td>￥5.0</td>
                <td><input type="text" name="notebook" id="1" placeholder="0"></td>
            </tr>
            <tr>
                <td>2</td>
                <td><img src="${pageContext.request.contextPath}/images/case.jpg" height="100" width="100"/>文具盒</td>
                <td>￥3.0</td>
                <td><input type="text" name="case" id="2" placeholder="0"></td>
            </tr>
            <tr>
                <td>3</td>
                <td><img src="${pageContext.request.contextPath}/images/paper.jpg" height="100" width="100"/>草稿纸</td>
                <td>￥2.0</td>
                <td><input type="text" name="paper" id="3" placeholder="0"></td>
            </tr>
            <tr>
                <td>4</td>
                <td><img src="${pageContext.request.contextPath}/images/tape.jpg" height="100" width="100"/>胶带</td>
                <td>￥4.5</td>
                <td><input type="text" name="tape" id="4" placeholder="0"></td>
            </tr>
            <tr>
                <td>5</td>
                <td><img src="${pageContext.request.contextPath}/images/eraser.jpg" height="100" width="100"/>橡皮</td>
                <td>￥5.5</td>
                <td><input type="text" name="eraser" id="5" placeholder="0"></td>
            </tr>
            </tbody>
        </table>
        <input type="submit" value="提交订单">
    </form>
</div>
=======
<%@ page import="java.util.List" %>
<%@ page import="java.util.Vector" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/5/28 0028
  Time: 15:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%
    if (application.getAttribute("onlineUsers") == null) {
        application.setAttribute("onlineUsers", new Vector<String>());
    }
%>
<html>
<head>
    <title>Lec23 Application</title>
</head>
<body>
<div align="right">
    当前登录用户<%=session.getAttribute("name")%>;
    <%
        if (session.getAttribute("name") != null) {
            out.println("<a href='logout.jsp'>注销</a>");
        } else {
            out.println("<a href='login.html'>请登录</a>");
        }
    %>
</div>

<div align="center">
    <h3>当前有<%=((List<String>) application.getAttribute("onlineUsers")).size()%>在线用户:</h3>
    <%
        List<String> userList = (List<String>) application.getAttribute("onlineUsers");
        for (String user : userList) {
            out.println(user + "<br>");
        }
    %>


</div>

</body>
</html>