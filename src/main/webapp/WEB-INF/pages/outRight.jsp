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
        #submit {
            text-align: right;
        }
    </style>
</head>
<body>
<form id="select1" action="" method="post">
    <div style="width:100%;">
        <div id="panel1" class="mini-panel" title="⬇️项目基本信息" iconCls="icon-hide" style="width:100%;height:60%;"
             showToolbar="true" showFooter="true" allowResize="true" collapseOnTitleClick="true">
            <table>
                <table>
                    <tr>
                        <td style="width:120px">项目名称<font color="red">※</font></td>
                        <td colspan="3"><input style="width: 100%;height: 25px;" class="mini-textarea"/></td>
                    </tr>
                    <tr>
                        <td style="width:120px">项目来源<font color="red">※</font></td>
                        <td>
                            <input type="radio" value="政府部门">
                            <input type="radio" value="行业协会">
                            <input type="radio" value="集团">
                            <input type="radio" value="其他">
                        </td>
                    </tr>
                    <tr>
                        <td style="width:120px">申报单位<font color="red">※</font></td>
                        <td colspan="3"><input style="width: 100%;height: 25px;" class="mini-textarea"/></td>
                    </tr>
                    <tr>
                        <td style="width:120px">应用方向<font color="red">※</font></td>
                        <td colspan="3"><input style="width: 100%;height: 25px;" class="mini-textarea"/></td>
                    </tr>
                </table>
            </table>
        </div>
    </div>
    <div style="width:100%;">
        <div id="panel1" class="mini-panel" title="⬇️项目成果" iconCls="icon-hide" style="width:100%;height:60%;"
             showToolbar="true" showFooter="true" allowResize="true" collapseOnTitleClick="true">
            <table>
                <tr>
                    <td style="width:120px">成果应用<font color="red">※</font></td>
                    <td colspan="3"><input style="width: 100%;height: 25px;" class="mini-textarea"/></td>
                </tr>
                <tr>
                    <td style="width:120px">产品形式<font color="red">※</font></td>
                    <td colspan="3"><input style="width: 100%;height: 25px;" class="mini-textarea"/></td>
                </tr>
                <tr>
                    <td style="width:120px">预计知识产权<font color="red">※</font></td>
                    <td colspan="3"><input style="width: 100%;height: 25px;" class="mini-textarea"/></td>
                </tr>
                <tr>
                    <td style="width:120px">预计经济效益<font color="red">※</font></td>
                    <td colspan="3"><input style="width: 100%;height: 25px;" class="mini-textarea"/></td>
                </tr>
                <tr>
                    <td style="width:120px">形成固定资产<font color="red">※</font></td>
                    <td colspan="3"><input style="width: 100%;height: 25px;" class="mini-textarea"/></td>
                </tr>
            </table>
        </div>
    </div>
    <div style="width:100%;">
        <div id="panel1" class="mini-panel" title="⬇️预算信息" iconCls="icon-hide" style="width:100%;height:60%;"
             showToolbar="true" showFooter="true" allowResize="true" collapseOnTitleClick="true">
            <table>
                <tr>
                    <td style="width:120px">总预算 <font color="red">※</font></td>
                    <td><input style="width: 100%;" type="text" class="mini-textarea"/></td>
                    <td style="width:120px">外部经费 <font color="red">※</font></td>
                    <td><input style="width: 100%" class="mini-textarea"/></td>
                </tr>
                <tr>
                    <td style="width:120px">公司经费 <font color="red">※</font></td>
                    <td><input style="width: 100%" class="mini-textarea"/></td>
                </tr>
            </table>
        </div>
    </div>
    <div style="width:100%;">
        <div id="panel1" class="mini-panel" title="⬇️流程信息" iconCls="icon-hide" style="width:100%;height:60%;"
             showToolbar="true" showFooter="true" allowResize="true" collapseOnTitleClick="true">
            <table>
                <tr>
                    <td>审批(部门经理)<font color="red">※</font></td>
                    <td>
                        <input id="btnEdit1" class="mini-buttonedit" onbuttonclick="onButtonEdit" name="a" textName="b"
                               required="required">
                    </td>
                </tr>
            </table>
        </div>
    </div>
</form>


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