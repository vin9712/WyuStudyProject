<%--
  Created by IntelliJ IDEA.
  User: Lin
  Date: 2019/9/23
  Time: 18:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>上传</title>
</head>
<script type="text/javascript">
    // 项div中间添加文本框
    function run() {
        var div = document.getElementById("divId");
        div.innerHTML += "<div><input type='file' name='myfile'><input type='button' value='删除' onclick='del(this)'/></div>";
    }

    // 删除某一行
    function del(who) {
        // 获取删除的按钮的父节点
        var divv = who.parentNode;
        divv.parentNode.removeChild(divv);
    }
</script>
<body>
<h3>多文件上传</h3>
<form action="${ pageContext.request.contextPath }/UploadServlet"
      method="post" enctype="multipart/form-data">
    <input type="button" value="添加" onclick="run()">&nbsp;<input
        type="submit" value="上传"/>

    <div id="divId"></div>

</form>
</body>
</html>
