
<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 18/1/13
  Time: 下午3:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册页面</title>
</head>
<body>
<form action="register.action" method="post">
    用户名<input type="text" name="staffName"><br>
    密码<input type="password" name="staffPwd"><br>
    班级<select id="depId" name="depId">
    <option value="-1">--请选择--</option>
</select>
    <input type="submit" value="注册">
    <input type="reset" value="重置"><br>
</form>
<script src="js/jquery-3.2.1.js" type="text/javascript"></script>



</body>
</html>
