<%--<%@ taglib prefix="s" uri="/struts-tags" %>--%>
<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 18/1/13
  Time: 下午2:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录界面</title>
</head>
<body>
<form action="login.action" method="post">
    用户名<input type="text" name="staffName"><br>
    密码<input type="password" name="staffPwd"><br>
    <input type="submit" value="登录">
    <input type="reset" value="重置"><br>
    <a href="regist">注册</a>
</form>

</body>
</html>
