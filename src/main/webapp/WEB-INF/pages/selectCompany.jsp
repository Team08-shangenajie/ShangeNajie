<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link href="../../css/demo.css" rel="stylesheet" type="text/css"/>


    <script src="../../scripts/boot.js" type="text/javascript"></script>

</head>
<body>
<div>
    <h1>单位列表</h1>
    <div style="width:80%;">
        <div class="mini-toolbar" style="border-bottom:0;padding:0px;">
            <table style="width:100%;">
                <tr>
                    <td style="white-space:nowrap;">
                        <input id="key" class="mini-textbox" emptyText="请输入单位名称" style="width:150px;"
                               onenter="onKeyEnter"/>
                        <a class="mini-button" onclick="search()">查询</a>
                    </td>
                </tr>
            </table>
        </div>
    </div>

    <div id="datagrid1" class="mini-datagrid" style="width:80%;height:280px;"
         url="/selectDep" sizelist="[2,5,10]" onrowdblclick="onRowDblClick">
        <div property="columns">
            <div field="depId" width="120" headerAlign="center" allowSort="true">单位编号</div>
            <div field="depName" width="120" headerAlign="center" allowSort="true">单位名称</div>
        </div>
    </div>
</div>

<div class="mini-toolbar" style="text-align:center;padding-top:8px;padding-bottom:8px;" borderStyle="border:0;">
    <a class="mini-button" style="width:60px;" onclick="onOk()">确定</a>
    <span style="display:inline-block;width:25px;"></span>
    <a class="mini-button" style="width:60px;" onclick="onCancel()">取消</a>
</div>
</body>
</html>
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
    function GetData() {
        var row = grid.getSelected();
        return row;
    }

    function CloseWindow(action) {
        if (window.CloseOwnerWindow) return window.CloseOwnerWindow(action);
        else window.close();
    }
    function onOk() {
        CloseWindow("ok");
    }
    function onCancel() {
        CloseWindow("cancel");
    }
    function onRowDblClick(e) {
        onOk();
    }
</script>
