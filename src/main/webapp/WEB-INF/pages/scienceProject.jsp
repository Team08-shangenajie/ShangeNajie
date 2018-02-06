<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 18/1/18
  Time: 下午7:15
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

    <style type="text/css">
        * {
            font-size: 15px;
        }

        .table1 {
            width: 100%;
            margin: 1px;
            border: 1px solid gainsboro;
        }

        td {
            border-collapse: collapse;
            padding: 3px;
            height: 25px;
        }

        .trTitle {
            background-color: #daeeff;
            color: #427dc0;
        }

        input {
            height: 20px;
            text-align: center;
            vertical-align: text-bottom;
        }

        #div_other, #cbl1 {
            float: left;
            display: inline;
        }
        #input_other {
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

<form id="form">
    <div id="tabs1" style="width: 100%;height: 100%;border: 1px solid gainsboro" class="mini-tabs" activeIndex="0"
         plain="false">
        <%--基本信息TAB--%>
        <div title="项目基本信息">
            <table cellpadding="1" cellspacing="2" class="table1">
                <tr>
                    <td class="trTitle" colspan="4">项目基本信息</td>
                </tr>
                <tr>
                    <td style="width:120px">项目名称<font color="red">※</font></td>
                    <td colspan="3"><input style="width: 100%;height: 25px;" class="mini-textarea"/></td>
                </tr>
                <tr>
                    <td style="width:120px">项目申报单位<font color="red">※</font></td>
                    <td><input id="btnEdit2" style="width: 100%"
                               class="mini-buttonedit"
                               allowInput="false"
                               onbuttonclick="onClazzButtonEdit"
                               name="depId" textName="depName"/>
                    </td>
                    <td style="width:120px">联合申报单位<font color="red">※</font></td>
                    <td><input id="btnEdit3" style="width: 100%"
                               class="mini-buttonedit"
                               allowInput="false"
                               onbuttonclick="onClazzButtonEdit"
                               name="depId" textName="depName"/>
                    </td>
                </tr>
                <tr>
                    <td style="width:120px">目的<font color="red">※</font></td>
                    <td colspan="3"><input style="width: 100%" class="mini-textarea"/></td>
                </tr>
                <tr>
                    <td class="trTitle" colspan="4" style="width:100px">与核电生产运营安全性、可靠性、经济的适应分析</td>
                </tr>
                <tr>
                    <td style="width:120px">安全性</td>
                    <td><input style="width: 100%" class="mini-textarea"/></td>
                    <td style="width:120px">可靠性</td>
                    <td><input style="width: 100%" class="mini-textarea"/></td>
                </tr>
                <tr>
                    <td style="width:120px">经济性</td>
                    <td><input style="width: 100%" class="mini-textarea"/></td>
                    <td style="width:120px">其他</td>
                    <td><input style="width: 100%" class="mini-textarea"/></td>
                </tr>
                <tr>
                    <td class="trTitle" colspan="4">其他信息</td>
                </tr>
                <tr>
                    <td style="width:120px">成果应用</td>
                    <td colspan="3"><input style="width: 100%" class="mini-textarea"/></td>
                </tr>
                <tr>
                    <td style="width:120px">实际用户</td>
                    <td colspan="3"><input style="width: 100%" class="mini-textarea"/></td>
                </tr>
                <tr>
                    <td style="width:120px">潜在用户</td>
                    <td colspan="3"><input style="width: 100%" class="mini-textarea"/></td>
                </tr>
                <tr>
                    <td style="width:120px">项目完成周期</td>
                    <td colspan="3"><input style="width: 100%" class="mini-textarea"/></td>
                </tr>
                <tr>
                    <td style="width:120px">项目内容路径简介</td>
                    <td colspan="3"><input style="width: 100%" class="mini-textarea"/></td>
                </tr>
                <tr>
                    <td class="trTitle" colspan="4">预算信息</td>
                </tr>
                <tr>
                    <td style="width:120px">总预算 <font color="red">※</font></td>
                    <td><input style="width: 100%;" type="text" class="mini-textarea"/></td>
                    <td style="width:120px">公司经费</td>
                    <td><input style="width: 100%" class="mini-textarea"/></td>
                </tr>
                <tr>
                    <td style="width:120px">外部支持经费</td>
                    <td><input style="width: 100%" class="mini-textarea"/></td>
                    <td style="width:120px">国家经费</td>
                    <td><input style="width: 100%" class="mini-textarea"/></td>
                </tr>

            </table>
        </div>
        <%--其他信息TAB--%>
        <div title="项目其他信息">
            <table cellpadding="1" cellspacing="2" class="table1">
                <tr>
                    <td class="trTitle" colspan="2">技术第一负责人信息</td>
                </tr>
                <tr>
                    <td style="width: 200px;">姓名,专业经历和能力简述</td>
                    <td>
                        <input name="remarks" class="mini-textarea" style="width: 100%;height:60px;"/>
                    </td>
                </tr>
                <tr>
                    <td class="trTitle" colspan="2">产品信息</td>
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
                             {'id':'10003','text':'计算机软件'}]">
                        </div>
                        <div id="div_other" name="product" class="mini-checkbox" text="其他" checked="false"
                             onvaluechanged="changeOther">
                        </div>
                        <input id="input_other" type="text" disabled="disabled" value="">
                    </td>

                </tr>
                <tr>
                    <td style="width: 100px;">预计产权说明</td>
                    <td>
                        <input name="remarks" class="mini-textarea" style="width:100%;height:60px;"/>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px;">经济效益</td>
                    <td>
                        <input name="remarks" class="mini-textarea" style="width:100%;height:60px;"/>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px;">固定资产</td>
                    <td>
                        <input name="remarks" class="mini-textarea" style="width:100%;height:60px;"/>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px;">验收标准</td>
                    <td>
                        <input name="remarks" class="mini-textarea" style="width:100%;height:60px;"/>
                    </td>
                </tr>
                <tr>
                    <td class="trTitle" colspan="2">附件信息</td>
                </tr>
                <tr>
                    <td>立项报告书<font color="red">※</font></td>
                    <td>
                        <div>
                            <input class="mini-htmlfile" name="Fdata" id="file1" style="width:100%;"
                                   required="required"/>
                            <input type="button" value="上传" onclick="ajaxFileUpload()"/>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="trTitle" colspan="2">流程信息</td>
                </tr>
                <tr>
                    <td>审批(部门经理)<font color="red">※</font></td>
                    <td>
                        <input id="btnEdit1" class="mini-buttonedit" onbuttonclick="onButtonEdit" name="a" textName="b"
                               required="required">
                    </td>
                </tr>
                <tr>
                    <td>
                        <input id="btn" type="button" value="提交" onclick="submitContent()">
                    </td>
                </tr>
            </table>
        </div>
    </div>
</form>

<script>
    mini.parse();
    function onClazzButtonEdit(e) {
        //加载mini组件 后面的get方法才好用
        var btnEdit = this;
        mini.open({
            url: "selectCompany",
            title: "选择单位",
            width: 650,
            height: 380,
            ondestroy: function (action) {
                if (action == "ok") {
                    var iframe = this.getIFrameEl();
                    var data = iframe.contentWindow.GetData();
                    data = mini.clone(data);
                    if (data) {
                        btnEdit.setValue(data.depId);
                        btnEdit.setText(data.depName);
                    }
                }

            }
        })
    }
    function onStudentButtonEdit(e) {
        //加载mini组件 后面的get方法才好用
        var btnEdit = this;
        mini.open({
            url: "page/SelectStudent.html",
            title: "选择学生",
            width: 650,
            height: 380,
            ondestroy: function (action) {
                //if (action == "close") return false;
                if (action == "ok") {
                    var iframe = this.getIFrameEl();
                    var data = iframe.contentWindow.GetData();
                    data = mini.clone(data);    //必须
                    if (data) {
                        btnEdit.setValue(data.sid);
                        btnEdit.setText(data.sname);
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

    //    //先找到tab组件
    //    var tabs = mini.get("tabs1");
    //    //给tab组件加入监听事件,tab切换前保存数据
    //    tabs.on("beforeactivechanged",function (e) {
    //
    //        var tabs = e.sender();
    //        var iframe = tabs.getTabIFrameEl(tabs.getTab(0));
    //        var data = iframe.contentWindow.getForm();
    //
    //        $.cookie("form",data);
    //
    //        //将第一个tab中数据保存到cookie中
    //
    //    });
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
