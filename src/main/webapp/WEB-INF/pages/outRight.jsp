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
        #input_other1, #input_other2, #input_other3, #input_other4 {
            height: 22px;
            background-color: white;
            border-color: black;
            border-style: solid;
            border-top-width: 0px;
            border-right-width: 0px;
            border-bottom-width: 1px;
            border-left-width: 0px
        }
    </style>
</head>
<body>
<h1 class="trTitle">当前位置: 承接外部科研项目申报</h1>
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
                            <div id="div_other1" name="product" class="mini-checkbox" text="政府部门" checked="false"
                                 onvaluechanged="changeOther1">
                            </div>
                            <input id="input_other1" type="text" disabled="disabled" value="">

                            <div id="div_other2" name="product" class="mini-checkbox" text="行业协会" checked="false"
                                 onvaluechanged="changeOther2">
                            </div>
                            <input id="input_other2" type="text" disabled="disabled" value="">

                            <div id="div_other3" name="product" class="mini-checkbox" text="集团" checked="false"
                                 onvaluechanged="changeOther3">
                            </div>
                            <input id="input_other3" type="text" disabled="disabled" value="">

                            <div id="div_other4" name="product" class="mini-checkbox" text="其他" checked="false"
                                 onvaluechanged="changeOther4">
                            </div>
                            <input id="input_other4" type="text" disabled="disabled" value="">
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
        <div id="panel2" class="mini-panel" title="⬇️项目成果" iconCls="icon-hide" style="width:100%;height:60%;"
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
        <div id="panel3" class="mini-panel" title="⬇️预算信息" iconCls="icon-hide" style="width:100%;height:60%;"
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
        <div id="panel4" class="mini-panel" title="⬇️流程信息" iconCls="icon-hide" style="width:100%;height:60%;"
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
    <input id="btn" type="submit" value="提交">
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


    function changeOther1(e) {
        var checked = this.getChecked();
        if (checked == true) {
            document.getElementById("input_other1").disabled = "";
        } else {
            document.getElementById("input_other1").disabled = "disabled";
        }
    }
    function changeOther2(e) {
        var checked = this.getChecked();
        if (checked == true) {
            document.getElementById("input_other2").disabled = "";
        } else {
            document.getElementById("input_other2").disabled = "disabled";
        }
    }
    function changeOther3(e) {
        var checked = this.getChecked();
        if (checked == true) {
            document.getElementById("input_other3").disabled = "";
        } else {
            document.getElementById("input_other3").disabled = "disabled";
        }
    }
    function changeOther4(e) {
        var checked = this.getChecked();
        if (checked == true) {
            document.getElementById("input_other4").disabled = "";
        } else {
            document.getElementById("input_other4").disabled = "disabled";
        }
    }


</script>
</body>
</html>