<%--
  Created by IntelliJ IDEA.
  User: Lin
  Date: 2019/9/22
  Time: 21:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>addNotice</title>
    <script type="text/javascript" charset="utf-8"
            src="ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="ueditor/ueditor.all.min.js">

    </script>
    <!--建议手动加语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="utf-8"
            src="ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<body>
<form action="ShowNotice" method="post">
    <table cellpadding="7">
        <tr>
            <td>公告名称:</td>
            <td><label>
                <input class="easyui-textbox" type="text" name="noticename"
                       data-options="required:true" style="width: 300px; height: 20px">
            </label></td>
        </tr>
        <tr>
            <td>公告主题:</td>
            <td><label>
                <input class="easyui-textbox" type="text" name="noticetitle"
                       style="width: 300px; height: 20px" data-options="required:true">
            </label></td>
        </tr>
    </table>

    <%--添加公告栏编辑器--%>
    <label for="container"></label>
    <textarea id="container" name="container" style="width: 100%; height: 400px;"> </textarea>

    <br>
    <label> <input type="submit" value="保存"></label>
</form>
</body>


<script type="text/javascript">
    var ue = UE.getEditor("container");

    setTimeout(function () {
        ue.execCommand('drafts')
    }, 2000); // 自动保存

    // function submitForm() {
    //     $('#ff').form('submit', {
    //         url: "addBulletin",
    //         onSubmit: function () {
    //             return $(this).form('enableValidation').form('validate');
    //         },
    //         success: function (data) {
    //             if (data === "1") {
    //                 //easyui的信息提示框：1.标题，2.提示信息，3.图标
    //                 $.messager.alert('添加成功', '恭喜你,添加成功', 'info');
    //                 window.location.reload();
    //             } else {
    //                 $.messager.alert('添加失败', '对不起,添加失败了', 'error');
    //             }
    //         }
    //
    //     });
    // }
    //
    // //置空的方法
    // function clearForm() {
    //     $('#ff').form('clear');
    // }
</script>
</html>
