<%--<%@ taglib prefix="s" uri="/struts-tags" %>--%>
<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 18/1/13
  Time: 下午2:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>登录界面</title>
</head>
<body>
<div id="Layer1" style="position:absolute; width:100%; height:100%; z-index:-1;">
    <img src="../../imgs/homeimg.png" height="100%" width="100%"/>
</div>
<div style="margin-left: 70%;margin-top: 20%;position: absolute">
    <form action="submitLogin" method="post">
        用户名:  <input type="text" name="username"><br>
        密  码:   <input type="password" name="password"><br>
        <input type="submit" value="登录">
        <input type="reset" value="重置"><br>
        <a href="regist">注册</a>
    </form>
</div>
</body>
</html>
