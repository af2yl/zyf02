<%--
  Created by IntelliJ IDEA.
  User: LittleOne
  Date: 2020/6/22
  Time: 16:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="AF.CountPrice" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="car" scope="page" class="AF.CountPrice">
    <jsp:setProperty name="car" property="num_apple" param="notebook"/>
    <jsp:setProperty name="car" property="num_orange" param="pencil case"/>
    <jsp:setProperty name="car" property="num_banana" param="scratch paper"/>
    <jsp:setProperty name="car" property="num_grapefruit" param="packaging tape"/>
    <jsp:setProperty name="car" property="num_peach" param="eraser"/>
    亲爱的顾客：<%=
session.getAttribute("name")
%>;
    <p align="center">您选购的订单详情如下:</p>
    <table cellpadding="0" border="1" align="center">
        <thead>
        <tr><th>商品编号</th><th>商品名</th><th>单价</th><th>购买数量</th><th>价格</th></tr>
        </thead>
        <tbody>
        <tr>
            <td>1</td>
            <td>笔记本</td>
            <td>￥8.0</td>
            <td><jsp:getProperty name = "car" property="num_apple" /></td>
            <td><jsp:getProperty name = "car" property="pri_apple" /></td>
        </tr>
        <tr>
            <td>2</td>
            <td>文具盒</td>
            <td>￥10.0</td>
            <td><jsp:getProperty name = "car" property="num_orange" /></td>
            <td><jsp:getProperty name = "car" property="pri_orange" /></td>
        </tr>
        <tr>
            <td>3</td>
            <td>草稿纸</td>
            <td>￥2.0</td>
            <td><jsp:getProperty name = "car" property="num_banana" /></td>
            <td><jsp:getProperty name = "car" property="pri_banana" /></td>
        </tr>
        <tr>
            <td>4</td>
            <td>胶带</td>
            <td>￥2.5</td>
            <td><jsp:getProperty name = "car" property="num_grapefruit" /></td>
            <td><jsp:getProperty name = "car" property="pri_grapefruit" /></td>
        </tr>
        <tr>
            <td>5</td>
            <td>橡皮</td>
            <td>￥5.5</td>
            <td><jsp:getProperty name = "car" property="num_peach" /></td>
            <td><jsp:getProperty name = "car" property="pri_peach" /></td>
        </tr>
        </tbody>
    </table>
    <div align="center">
        <div >总价为：<jsp:getProperty  name="car" property="total_price"/></div>
        <button>立即付款</button>
        <a href="index.jsp"><button>取消订单</button></a>
    </div>
</jsp:useBean>
</body>
</html>