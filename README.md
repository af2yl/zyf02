# zyf02
购物车项目的实现：

STEP 1(项目准备):
*githup 仓库的建立以及与IDEAL的连接 
*项目的同步 
*整体框架的设计


STEP 2（设计）：
*实现登陆功能 


STEP 3(完善): 
*实现物品图片的上传以及加购总计功能
*修改价格总计出现的错误

STEP 4(拓展)：
*尝试编写html文件链接到支付网页界面实现结账支付功能
*尝试完善选购界面加减button（避免手动输入数目）

# 购物车项目的设计

学号：2701170235                姓名：左燕峰

## 1、项目准备

- GIT建仓库（zyf02）并与ideal连接
- 配置Tomcat环境
- 设计项目的整体框架

## 2、需求描述：

- 首先完成一个登录界面
- 需要一个列出所有商品的页面
- 可以输入所需物品数目并添加 **“提交订单”** button 
- 提交订单后可观看购物车里面目前所有物品及价格，方便核对
- 提交后跳转支付界面（支付宝、微信方式均可）
- 支付完成后可以跳转回购物车商品界面继续购买

## 3、程序代码

##### JavaBean实现价格计算：

```java
package AF;
public class CountPrice {
    private double num_notebook;
    private double num_case;
    private double num_paper;
    private double num_tape;
    private double num_eraser;
    private double pri_notebook;
    private double pri_case;
    private double pri_paper;
    private double pri_tape;
    private double pri_eraser;
    private double total_price;

    public double getNum_notebook() {
        return num_notebook;
    }

    public void setNum_notebook(double num_notebook) {
        this.num_notebook = num_notebook;
        this.setPri_notebook(num_notebook * 5.0);
    }

    public double getNum_case() {
        return num_case;
    }

    public void setNum_case(double num_case) {
        this.num_case = num_case;
        this.setPri_case(num_case * 3.0);
    }

    public double getNum_paper() { return num_paper; }

    public void setNum_paper(double num_paper) {
        this.num_paper = num_paper;
        this.setPri_paper(num_paper * 2.0);
    }

    public double getNum_tape() {
        return num_tape;
    }

    public void setNum_tape(double num_tape) {
        this.num_tape = num_tape;
        this.setPri_tape(num_tape * 4.5);
    }

    public double getNum_eraser() {
        return num_eraser;
    }

    public void setNum_eraser(double num_eraser) {
        this.num_eraser = num_eraser;
        this.setPri_eraser(num_eraser * 5.5);
    }

    public double getPri_notebook() {
        return pri_notebook;
    }

    public void setPri_notebook(double pri_notebook) {
        this.pri_notebook = pri_notebook;
    }

    public double getPri_case() {
        return pri_case;
    }

    public void setPri_case(double pri_case) {
        this.pri_case = pri_case;
    }

    public double getPri_paper() {
        return pri_paper;
    }

    public void setPri_paper(double pri_paper) {
        this.pri_paper = pri_paper;
    }

    public double getPri_tape() {
        return pri_tape;
    }

    public void setPri_tape(double pri_tape) {
        this.pri_tape = pri_tape;
    }

    public double getPri_eraser() {
        return pri_eraser;
    }

    public void setPri_eraser(double pri_eraser) {
        this.pri_eraser = pri_eraser;
    }

    public double getTotal_price() {
        this.total_price = this.getPri_notebook() + this.getPri_paper()
                + this.getPri_tape() + this.getPri_case() + this.getPri_eraser();
        return total_price;
    }
}

```

##### 调用JavaBean实现查询购物车购买的数量：

```jsp
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="AF.CountPrice" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="car" scope="page" class="AF.CountPrice">
    <jsp:setProperty name="car" property="num_notebook" param="notebook"/>
    <jsp:setProperty name="car" property="num_case" param="case"/>
    <jsp:setProperty name="car" property="num_paper" param="paper"/>
    <jsp:setProperty name="car" property="num_tape" param="tape"/>
    <jsp:setProperty name="car" property="num_eraser" param="eraser"/>
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
            <td>￥5.0</td>
            <td><jsp:getProperty name = "car" property="num_notebook" /></td>
            <td><jsp:getProperty name = "car" property="pri_notebook" /></td>
        </tr>
        <tr>
            <td>2</td>
            <td>文具盒</td>
            <td>￥3.0</td>
            <td><jsp:getProperty name = "car" property="num_case" /></td>
            <td><jsp:getProperty name = "car" property="pri_case" /></td>
        </tr>
        <tr>
            <td>3</td>
            <td>草稿纸</td>
            <td>￥2.0</td>
            <td><jsp:getProperty name = "car" property="num_paper" /></td>
            <td><jsp:getProperty name = "car" property="pri_paper" /></td>
        </tr>
        <tr>
            <td>4</td>
            <td>胶带</td>
            <td>￥4.5</td>
            <td><jsp:getProperty name = "car" property="num_tape" /></td>
            <td><jsp:getProperty name = "car" property="pri_tape" /></td>
        </tr>
        <tr>
            <td>5</td>
            <td>橡皮</td>
            <td>￥5.5</td>
            <td><jsp:getProperty name = "car" property="num_eraser" /></td>
            <td><jsp:getProperty name = "car" property="pri_eraser" /></td>
        </tr>
        </tbody>
    </table>
    <div align="center">
        <div >总价为：<jsp:getProperty  name="car" property="total_price"/></div>
        <a href="pay.html"><button>提交订单</button></a>
        <a href="index.jsp"><button>取消订单</button></a>
    </div>
</jsp:useBean>
</body>

```

## 3、总结

1. Tomcat、Mysql、Git应用技术
2. Java核心技术
3. Jsp开发基础  
4. Web前端优化（html、css、js）
