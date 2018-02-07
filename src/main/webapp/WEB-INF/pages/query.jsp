<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>综合查询</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link href="../../css/demo.css" rel="stylesheet" type="text/css"/>

    <script src="../../scripts/boot.js" type="text/javascript"></script>
    <style type="text/css">
        #submit{
            text-align: right;
        }
    </style>
</head>
<body>
<form id="select1" action="" method="post">
    <div style="width:100%;">
        <div id="panel1" class="mini-panel" title="查询条件" iconCls="icon-hide" style="width:100%;height:60%;"
             showToolbar="true" showFooter="true" allowResize="true" collapseOnTitleClick="true">
            <table>
                <tr>
                    <td width="10%">申请时间</td>
                    <td width="26%"><input id="birthday" name="birthday" class="mini-datepicker" style="width: 100%"/></td>
                    <td width="10%">申请人</td>
                    <td width="26%">
                        <input id="applicant" class="mini-buttonedit" onbuttonclick="onButtonEdit"
                               name="a" textName="b" style="width: 100%">
                    </td>
                    <td width="10%">关键字</td>
                    <td width="26%"><input id="name" name="name" class="mini-textbox" style="width: 100%"></td>
                </tr>
                <tr>
                    <td>流程类型</td>
                    <td><input id="age" name="age" class="mini-spinner" minValue="" maxValue="200"
                                                  value="25" style="width: 100%"/></td>
                    <td>所属部门</td>
                    <td>
                        <input id="dept" class="mini-buttonedit" onbuttonclick="onButtonEdit"
                               name="a" textName="b" style="width: 100%">
                    </td>
                    <td>是否可以打印</td>
                    <td><input id="combo1" class="mini-combobox" style="width:150px;" textField="text"
                               valueField="id" emptyText="请选择..." url="../text/print.txt" value=""
                               allowInput="true" showNullItem="true" nullItemText="请选择..."/></td>
                </tr>
                <tr>
                    <td id="submit" colspan="6"><input type="submit" value="查询"/></td>
                </tr>
            </table>
        </div>
    </div>
</form>
<div id="datagrid1" class="mini-datagrid" style="width:100%;height:60%;" allowResize="true"
     url="../data/AjaxService.aspx?method=SearchEmployees" idField="id" multiSelect="true">
    <div property="columns">
        <div type="checkcolumn"></div>
        <div field="loginname" width="120" headerAlign="center" allowSort="true">流程编号</div>
        <div field="name" width="120" headerAlign="center" allowSort="true">流程名称</div>
        <div field="name" width="120" headerAlign="center" allowSort="true">所属部门</div>
        <div field="name" width="120" headerAlign="center" allowSort="true">当前环节</div>
        <div field="name" width="120" headerAlign="center" allowSort="true">提报人</div>
        <div field="name" width="120" headerAlign="center" allowSort="true">是否可以打印</div>
        <div field="name" width="120" headerAlign="center" allowSort="true">操作</div>
    </div>
</div>


<script type="text/javascript">
    mini.parse();

    var grid = mini.get("datagrid1");
    grid.load();


    function search() {
        var key = mini.get("key").getValue();
        grid.load({key: key});
    }
    function onKeyEnter(e) {
        search();
    }
    /////////////////////////////////////////////////
    function onBirthdayRenderer(e) {
        var value = e.value;
        if (value) return mini.formatDate(value, 'yyyy-MM-dd');
        return "";
    }




</script>
</body>
</html>