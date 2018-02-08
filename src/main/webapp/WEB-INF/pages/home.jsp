<%--
  Created by IntelliJ IDEA.
  User: dllo
<<<<<<< HEAD
  Date: 18/2/5
  Time: 下午8:56
=======
  Date: 18/2/3
  Time: 上午11:18
>>>>>>> origin/master
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="../../css/demo.css">

    <script src="../../scripts/boot.js" type="text/javascript"></script>
    <script src="../../swfupload/swfupload.js" type="text/javascript"></script>
    <script src="../../js/ajaxfileupload.js" type="text/javascript"></script>

    <style type="text/css">
        table,td{
            border: 1px solid #d5e9fa;
            border-collapse: collapse;
            padding: 1px;
            width: 99%;
        }

        input{
            height: 20px;
        }
    </style>
</head>
<body>
<div id="layout1" class="mini-layout" style="width:100%;height:100%"  borderStyle="border:solid 1px #aaa;">
    <div title="采购监管平台系统" region="north" showSplitIcon="true" showheader="false"
         style="float: left;width: 100%;height: 15px">
        <img src="../../imgs/uphead.png" width="100%" height="100%" style="z-index: 0;position: absolute">
        <img src="../../scripts/miniui/themes/icons/user.png" style="z-index: 1;position: absolute;left: 58%;top: 21%">
        <span style="z-index: 1;position: absolute;left: 60%">
            <h3>当前用户: [${sessionScope.user.uid}] ${sessionScope.user.username}</h3>
        </span>
        <img src="../../scripts/miniui/themes/icons/help.gif" style="z-index: 1;position: absolute;left: 72%;top: 21%">
        <span style="z-index: 1;position: absolute;left: 73%;top: 19%;"><a href="">系统帮助</a></span>
        <a href="/login" class="mini-button" img="../../scripts/miniui/res/images/system_close.gif" style="left:85%;z-index: 1;top: 20%;">退出</a>
        <a href="/home" class="mini-button" img="../../scripts/miniui/res/images/house.png" style="left:90%;z-index: 1;top: 20%;">首页</a>
        <a href="/personalCenter" class="mini-button" style="left:90%;z-index: 1;bottom: 10%;position: absolute;right: 1%;">个人工作台</a>


    </div>
    <div title="center" region="center"  >
        <div class="mini-splitter" style="width:99%;height:100%">
            <%--左侧menu--%>
            <div size="15%" showCollapseButton="true">
                <div id="leftTree" class="mini-outlookmenu" url="text/outlookmenu.txt" onitemselect="onItemSelect"
                     idField="id" parentField="pid" textField="text" borderStyle="border:0">
                </div>
            </div>
            <%--右侧主题--%>
            <div showCollapseButton="true" title="center" region="center" bodyStyle="overflow:scroll;">
                <iframe id="mainframe" frameborder="0" name="main" style="width:100%;height:100%;" border="0"></iframe>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">

    mini.parse();
    var iframe = document.getElementById("mainframe");
    iframe.src = "welcome";

    function onItemSelect(e) {
        var item = e.item;
        iframe.src = item.url;
    }
</script>
</body>
</html>
