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
        #choose{
            text-align: right;
        }
    </style>
</head>
<body>
<h1 class="trTitle">当前位置: 科研项目申报与评审 >> 评审小组组长填写评审意见</h1>
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
                    <td colspan="3"><input style="width: 100%;height: 25px;" class="mini-textarea"/></td>
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
                    <td class="trTitle" colspan="4" style="width:100px">工程师评审意见</td>
                </tr>
                <tr>
                    <td style="width:120px">评审结果</td>
                    <td colspan="3"><input style="width: 100%" class="mini-textarea"/></td>
                </tr>
                <tr>
                    <td>立项报告书</td>
                    <td><a href="">立项报告书</a></td>
                </tr>


                <tr>
                    <td class="trTitle" colspan="4" style="width:100px">技术可行性分析意见</td>
                </tr>
                <tr>
                    <td>对阳江公司科技发展规划的符合性审定</td>
                    <td colspan="3"><input style="width: 100%" class="mini-textarea"/></td>
                </tr>
                <tr>
                    <td>对项目成果的应用领域和</td>
                    <td colspan="3"><input style="width: 100%" class="mini-textarea"/></td>
                </tr>
                <tr>
                    <td>总体评价</td>
                    <td colspan="3"><input style="width: 100%" class="mini-textarea"/></td>
                </tr>
                <tr>
                    <td id="choose" colspan="4">
                        <a href="">不推荐</a>
                        <a href="">推荐</a>
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


