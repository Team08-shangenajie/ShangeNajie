<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>系统首页</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <link href="../../css/demo.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        body
        {
            width:100%;height:100%;margin:0;overflow:hidden;
        }
    </style>
    <script src="../../scripts/boot.js" type="text/javascript"></script>
</head>
<body>

<%--<div id="loginWindow" class="mini-window" title="用户登录" style="width:350px;height:165px;"--%>
     <%--showModal="true" showCloseButton="false">--%>

    <%--<div id="loginForm" style="padding:15px;padding-top:10px;">--%>
        <%--<table >--%>
            <%--<tr>--%>
                <%--<td style="width:60px;">用户名：</td>--%>
                <%--<td>--%>
                    <%--<input id="staffName" name="staffName" class="mini-textbox" required="true" style="width:150px;"/>--%>
                <%--</td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<td style="width:60px;">密码：</td>--%>
                <%--<td>--%>
                    <%--<input id="staffPwd" name="staffPwd" class="mini-password" requiredErrorText="密码不能为空"--%>
                           <%--required="true" style="width:150px;"/>--%>
                <%--</td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<td></td>--%>
                <%--<td style="padding-top:5px;">--%>
                    <%--<a onclick="onLoginClick" class="mini-button" style="width:60px;">登录</a>--%>
                    <%--<a onclick="onResetClick" class="mini-button" style="width:60px;">重置</a>--%>
                <%--</td>--%>
            <%--</tr>--%>
        <%--</table>--%>
    <%--</div>--%>

<%--</div>--%>

<%--<script type="text/javascript">--%>
    <%--mini.parse();--%>

    <%--var loginWindow = mini.get("loginWindow");--%>
    <%--loginWindow.show();--%>

    <%--function onLoginClick(e) {--%>
        <%--var form = new mini.Form("#loginWindow");--%>

        <%--form.validate();--%>
        <%--if (form.isValid() == false) return;--%>

        <%--loginWindow.hide();--%>
        <%--mini.loading("登录成功，马上转到系统...", "登录成功");--%>
        <%--setTimeout(function () {--%>
            <%--window.location = "home";--%>
        <%--}, 2000);--%>
    <%--}--%>
    <%--function onResetClick(e) {--%>
        <%--var form = new mini.Form("#loginWindow");--%>
        <%--form.clear();--%>
    <%--}--%>

<%--</script>--%>
<a href="login">进入班级列表</a>

</body>

</html>
