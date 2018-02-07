<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>卫星库管理人管理</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link href="../../css/demo.css" rel="stylesheet" type="text/css"/>

    <script src="../../scripts/boot.js" type="text/javascript"></script>
    <style type="text/css">
        #sar{
            text-align: right;
        }
    </style>
</head>
<body>
<form id="select1" action="" method="post">
    <div style="width:100%;">
        <div id="panel1" class="mini-panel" title="查询条件" iconCls="icon-hide" style="width:100%;height:60%;"
             showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="true" collapseOnTitleClick="true">
            <table width="100%">
                <tr>
                    <td width="20%">卫星库名称</td>
                    <td><input id="name" name="name" class="mini-textbox" style="width: auto"/></td>
                    <td width="20%">管理人员</td>
                    <td>
                        <input id="applicant" class="mini-buttonedit" onbuttonclick="onButtonEdit"
                               name="a" textName="b" style="width: auto">
                    </td>
                </tr>
                <tr>
                    <td id="sar" style="width:100%;" colspan="4">
                        <a class="mini-button" iconCls="icon-search" onclick="search()">查询</a>
                        <a class="mini-button" iconCls="icon-add" onclick="add()">新增</a>
                        <a class="mini-button" iconCls="icon-remove" onclick="remove()">删除</a>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</form>
<div id="datagrid1" class="mini-datagrid" style="width:100%;height:60%;" allowResize="true"
     url="../data/AjaxService.aspx?method=SearchEmployees" idField="id" multiSelect="true">
    <div property="columns">
        <div type="checkcolumn"></div>
        <div field="loginname"  headerAlign="center" allowSort="true">卫星库</div>
        <div field="name"  headerAlign="center" allowSort="true">管理人</div>
        <div field="name"  headerAlign="center" allowSort="true">创建日期</div>
        <div field="name"  headerAlign="center" allowSort="true">是否有效</div>
    </div>
</div>


<script type="text/javascript">
    mini.parse();

    var grid = mini.get("datagrid1");
    grid.load();


    function add() {

        mini.open({
            targetWindow: window,

            url: bootPATH + "../demo/CommonLibs/EmployeeWindow.html",
            title: "新增员工", width: 600, height: 400,
            onload: function () {
                var iframe = this.getIFrameEl();
                var data = { action: "new" };
                iframe.contentWindow.SetData(data);
            },
            ondestroy: function (action) {

                grid.reload();
            }
        });
    }

    function remove() {

        var rows = grid.getSelecteds();
        if (rows.length > 0) {
            if (confirm("确定删除选中记录？")) {
                var ids = [];
                for (var i = 0, l = rows.length; i < l; i++) {
                    var r = rows[i];
                    ids.push(r.id);
                }
                var id = ids.join(',');
                grid.loading("操作中，请稍后......");
                $.ajax({
                    url: "../data/AjaxService.aspx?method=RemoveEmployees&id=" +id,
                    success: function (text) {
                        grid.reload();
                    },
                    error: function () {
                    }
                });
            }
        } else {
            alert("请选中一条记录");
        }
    }
    function search() {
        var key = mini.get("key").getValue();
        grid.load({ key: key });
    }
    function onKeyEnter(e) {
        search();
    }
</body>
</html>
