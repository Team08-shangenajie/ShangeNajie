<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 18/1/18
  Time: 下午7:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        #choose{
            text-align: right;
        }
    </style>
</head>
<body>
<h1>工程师组织审核</h1>
<form id="form">
    <div id="tabs1" style="width: 100%;height: 100%;border: 1px solid gainsboro" class="mini-tabs" activeIndex="0"
         plain="false">
        <div title="项目基本信息">
            <table cellpadding="1" cellspacing="2" class="table1">
                <tr>
                    <td class="trTitle" colspan="4">项目基本信息</td>
                </tr>
                <tr>
                    <td style="width:120px">项目名称</td>
                    <td colspan="3"><input style="width: 100%" class="mini-textarea"/></td>
                </tr>
                <tr>
                    <td style="width:120px">项目申报单位</td>
                    <td><input id="btnEdit2" style="width: 100%"
                               class="mini-buttonedit"
                               allowInput="false"
                               onbuttonclick="onClazzButtonEdit"
                               name="cid" textName="cname"/>
                    </td>
                    <td style="width:120px">联合申报单位</td>
                    <td><input id="btnEdit3" style="width: 100%"
                               class="mini-buttonedit"
                               allowInput="false"
                               onbuttonclick="onClazzButtonEdit"
                               name="cid" textName="cname"/>
                    </td>
                </tr>
                <tr>
                    <td style="width:120px">目的</td>
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
                    <td class="trTitle" colspan="4" style="width:100px">评审信息</td>
                </tr>
                <tr>
                    <td style="width:120px">评审结果</td>
                    <td colspan="3"><input style="width: 100%" class="mini-textarea"/></td>
                </tr>
                <tr>
                    <td>立项报告书 <font color="red">※</font></td>
                    <td>
                        <div>
                            <input class="mini-htmlfile" name="Fdata" id="file1" style="width:100%;"
                                   required="required"/>
                            <input type="button" value="Browse" onclick="ajaxFileUpload()"/>
                        </div>
                    </td>
                </tr>


                <tr>
                    <td class="trTitle" colspan="4" style="width:100px">流程信息</td>
                </tr>
                <tr>
                    <td>审批组长</td>
                    <td>
                        <input id="btnEdit1" class="mini-buttonedit" onbuttonclick="onButtonEdit" name="a" textName="b"
                               required="required">
                        <input type="button" value="Browse" onclick="ajaxFileUpload()"/>
                    </td>
                </tr>
                <tr>
                    <td id="choose" colspan="4">
                        <a href="">驳回</a>
                        <a href="">提交</a>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</form>

<script>
    mini.parse();

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

</script>
</body>
</html>

