<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 18/2/3
  Time: 下午3:33
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
    <script src="../../js/jquery.cookie.js" type="text/javascript"></script>
</head>
<body>
<form id="form">
    <div title="项目基本信息">
        <table cellpadding="1" cellspacing="2" class="table1">
            <tr>
                <td class="trTitle" colspan="4">项目基本信息</td>
            </tr>
            <tr>
                <td style="width:120px">项目名称 <font color="red">※</font></td>
                <td><input style="width: 100%;height: 25px;" class="mini-textarea"/></td>
            </tr>
            <tr>
                <td style="width:120px">项目来源 <font color="red">※</font></td>
                <td>
                    <div id="div_other1" name="product" class="mini-radiobuttonlist" text="政府部门" checked="false"
                         onvaluechanged="changeOther">
                    </div>
                    <input id="input_other1" type="text" disabled="disabled" value="">
                    <div id="div_other2" name="product" class="mini-radiobuttonlist" text="行业协会" checked="false"
                         onvaluechanged="changeOther">
                    </div>
                    <input id="input_other2" type="text" disabled="disabled" value="">
                    <div id="div_other3" name="product" class="mini-radiobuttonlist" text="集团" checked="false"
                         onvaluechanged="changeOther">
                    </div>
                    <input id="input_other3" type="text" disabled="disabled" value="">
                    <div id="div_other4" name="product" class="mini-radiobuttonlist" text="其他" checked="false"
                         onvaluechanged="changeOther">
                    </div>
                    <input id="input_other4" type="text" disabled="disabled" value="">
                </td>
            </tr>
            <tr>
                <td style="width:120px">申报单位 <font color="red">※</font></td>
                <td><input id="btnEdit2" style="width: 100%"
                           class="mini-buttonedit"
                           allowInput="false"
                           onbuttonclick="onClazzButtonEdit"
                           name="cid" textName="cname"/>
                </td>
                <td style="width:120px">联合申报单位 <font color="red">※</font></td>
                <td><input id="btnEdit3" style="width: 100%"
                           class="mini-buttonedit"
                           allowInput="false"
                           onbuttonclick="onClazzButtonEdit"
                           name="cid" textName="cname"/>
                </td>
            </tr>
            <tr>
                <td style="width:120px">应用方向 <font color="red">※</font></td>
                <td colspan="3"><input style="width: 100%" class="mini-textarea"/></td>
            </tr>


            <tr>
                <td class="trTitle" colspan="4" style="width:100px">项目成果</td>
            </tr>
            <tr>
                <td style="width:120px">成果应用<font color="red">※</font></td>
                <td colspan="3"><input style="width: 100%" class="mini-textarea"/></td>
            </tr>

            <tr>
                <td>产品形式</td>
                <td>
                    <div id="cbl1" class="mini-checkboxlist"
                         textField="text" valueField="id"
                         data="[{'id':'10001','text':'专题报告'},
                             {'id':'10002','text':'技术方案'},
                             {'id':'10003','text':'技术标准'},
                             {'id':'10003','text':'硬件产品'},
                             {'id':'10003','text':'生产性文件'},
                             {'id':'10003','text':'设计文件'},
                             {'id':'10003','text':'软件产品'}]">
                    </div>
                    <div id="div_other" name="product" class="mini-checkbox" text="其他" checked="false"
                         onvaluechanged="changeOther">
                    </div>
                    <input id="input_other" type="text" disabled="disabled" value="">
                </td>
            </tr>
            <tr>
                <td style="width:120px">预计知识产权<font color="red">※</font></td>
                <td colspan="3"><input style="width: 100%" class="mini-textarea"/></td>
            </tr>
            <tr>
                <td style="width:120px">预计经济效益<font color="red">※</font></td>
                <td colspan="3"><input style="width: 100%" class="mini-textarea"/></td>
            </tr>
            <tr>
                <td style="width:120px">形成固定资产<font color="red">※</font></td>
                <td colspan="3"><input style="width: 100%" class="mini-textarea"/></td>
            </tr>
            <tr>
                <td class="trTitle" colspan="4">预算信息</td>
            </tr>
            <tr>
                <td style="width:120px">总预算 <font color="red">※</font></td>
                <td><input style="width: 100%;" type="text" class="mini-textarea"/></td>
                <td style="width:120px">外部经费</td>
                <td><input style="width: 100%" class="mini-textarea"/></td>
            </tr>
            <tr>
                <td style="width:120px">公司经费</td>
                <td><input style="width: 100%" class="mini-textarea"/></td>
            </tr>
            <tr>
                <td class="trTitle" colspan="4" style="width:100px">流程信息</td>
            </tr>
            <tr>
                <td style="width:120px">技术部经理<font color="red">※</font></td>
                <td>
                    <input id="btnEdit1" class="mini-buttonedit" onbuttonclick="onButtonEdit" name="a" textName="b"
                           required="required">
                </td>
            </tr>
            <tr>
                <td>
                    <input id="btn" type="button" value="提交" onclick="submitForm()">
                </td>
            </tr>
        </table>
    </div>
</form>
<script>
    mini.parse();
    //审批(部门经理)弹出框的点击事件
    function onClazzButtonEdit(e) {
        //加载mini组件 后面的get方法才好用
        var btnEdit = this;
        mini.open({
            url: "page/SelectGridWindow.html",
            title: "选择班级",
            width: 650,
            height: 380,
            ondestroy: function (action) {
                //if (action == "close") return false;
                if (action == "ok") {
                    var iframe = this.getIFrameEl();
                    var data = iframe.contentWindow.GetData();
                    data = mini.clone(data);    //必须
                    if (data) {
                        btnEdit.setValue(data.cid);
                        btnEdit.setText(data.cname);
                    }
                }

            }
        })
    }

    function energyTypeCheck(chk) {
        var Checkbox5 = document.getElementById('Checkbox5');
        if (chk.checked) {
            Checkbox5.style.display = 'block';
        } else {
            Checkbox5.style.display = 'none';
        }
    }


    function changeOther(e) {
        var checked = this.getChecked();
        if (checked == true) {
            document.getElementById("input_other").disabled = "";
        } else {
            document.getElementById("input_other").disabled = "disabled";
        }
    }

    function getForm() {
        var form = new mini.Form("#form");
        var data = form.getData();
        var s = mini.encode(data);
        return s;
    }

    function submitForm() {
        /**
         * 1.获得基本信息tab中的数据,cookies取
         * 2.获得当前其他信息tab中的数据,直接获取当前表单
         * 3.将数据传递给后台
         */
        var data = getForm();
        $("#form").val(data);

        $.ajaxFileUpload({
            url: "fileUploac.action",
            fileElementId: "${"upload"}",
            success: function (d) {

            }

        })
    }
    function changeOther(e) {
        var checked = this.getChecked();
        if (checked == true) {
            document.getElementById("input_other").disabled = "";
        } else {
            document.getElementById("input_other").disabled = "disabled";
        }
    }

</script>
</body>
</html>
