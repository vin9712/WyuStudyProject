<%--
  Created by IntelliJ IDEA.
  User: Lin
  Date: 2019/9/22
  Time: 10:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>主页面</title>
    <link rel="stylesheet" type="text/css"
          href="easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="easyui/themes/icon.css">
    <script type="text/javascript" src="easyui/jquery.min.js"></script>
    <script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
    <style>
        * {
            margin: 0;
            padding: 0;
            font-size: 12px;
        }
    </style>
</head>
<body>
<div class="easyui-layout" style="width:100%;height:100%;">
    <%--顶部信息--%>
    <div data-options="region:'north',border:false"
         style="background-image: url('images/topbg.gif'); height: 80px; overflow: hidden">
        <div style="position: relative;">
            <img src="images/top_logo.png" alt="找不到图片">
            <table style="position: absolute; left: 75%; top: 15px;">
                <tr>
                    <td style="width: 25px"><img src="images/top_home.gif">
                    </td>
                    <td style="width: 120px"><a href=""
                                                style="color: #FFFFFF; text-decoration: none">首页</a></td>
                    <td style="width: 25px"><img src="images/top_exit.gif"></td>
                    <td style="width: 120px"><a href=""
                                                style="color: #FFFFFF; text-decoration: none">退出登录</a></td>
                </tr>
            </table>
            <div style="position: absolute; background-image: url('images/StatBarBg.png'); left: 400px; top: 47px; width: 100%; height: 33px; background-size: 100% 100%;">
                <div style="width: 100%">
                    <table style="margin-left: 50px; margin-top: 7px">
                        <tr>
                            <td style="width: 25px"><img src="images/StatBar_admin.gif"></td>
                            <td>当前用户:<span>林嘉文</span></td>
                            <td style="width: 60%"></td>
                            <td style="width: 25px"><img src="images/StatBar_time.gif"></td>
                            <td style="width: 300px"><p id="ptime"></p></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <%--底部信息--%>
    <div data-options="region:'south',split:true,border:false" style="height:50px;">
        <div style="text-align: center;">©2015-2019&nbsp;&nbsp;五邑大学软件工程专业160802班&nbsp;&nbsp;林嘉文</div>
    </div>

    <%--右侧栏标题--%>
    <div data-options="region:'east',split:true" title="系统说明" style="width:100px;"></div>

    <%--左侧栏标题--%>
    <div data-options="region:'west',split:true" title="人事信息管理" style="width:200px; background-color: #E3E3E3 ">
        <div class="easyui-accordion">
            <div title="用户管理" data-options="iconCls:'icon-group'"
                 style="overflow: auto; padding: 10px; height: 200px">
                <a href="#" class="easyui-linkbutton"
                   data-options="plain:true,iconCls:'icon-zoom'" id="selectuser">用户查询</a>
                <a href="#" class="easyui-linkbutton"
                   data-options="plain:true,iconCls:'icon-groupadd'" id="adduser">添加用户</a>
            </div>
            <div title="部门管理" data-options="iconCls:'icon-edit'"
                 style="overflow: auto; padding: 10px; height: 200px">
                <a href="#" class="easyui-linkbutton"
                   data-options="plain:true,iconCls:'icon-zoom'" id="selectdept">部门查询</a>
                <a href="#" class="easyui-linkbutton"
                   data-options="plain:true,iconCls:'icon-add'" id="adddept">添加部门</a>
            </div>
            <div title="职位管理" data-options="iconCls:'icon-remove'"
                 style="overflow: auto; padding: 10px; height: 200px">
                <a href="#" class="easyui-linkbutton"
                   data-options="plain:true,iconCls:'icon-zoom'" id="selectpost">职位查询</a>
                <a href="#" class="easyui-linkbutton"
                   data-options="plain:true,iconCls:'icon-add'" id="addpost">添加职位</a>
            </div>
            <div title="员工管理" data-options="iconCls:'icon-user'"
                 style="overflow: auto; padding: 10px; height: 200px">
                <a href="#" class="easyui-linkbutton"
                   data-options="plain:true,iconCls:'icon-zoom'" id="selectemp">员工查询</a>
                <a href="#" class="easyui-linkbutton"
                   data-options="plain:true,iconCls:'icon-add'" id="addemp">添加员工</a>
            </div>
            <div title="公告管理" data-options="iconCls:'icon-ok'"
                 style="overflow: auto; padding: 10px; height: 200px">
                <a href="#" class="easyui-linkbutton"
                   data-options="plain:true,iconCls:'icon-print'" id="selectnotice">公告查询</a>
                <a href="#" class="easyui-linkbutton"
                   data-options="plain:true,iconCls:'icon-add'" id="addnotice">添加公告</a>
            </div>
            <div title="下载中心" data-options="iconCls:'icon-print'"
                 style="overflow: auto; padding: 10px; height: 200px">
                <a href="#" class="easyui-linkbutton"
                   data-options="plain:true,iconCls:'icon-upload'" id="upload">文件上传</a>
                <a href="#" class="easyui-linkbutton"
                   data-options="plain:true,iconCls:'icon-download'" id="download">文件下载</a>
            </div>
        </div>
    </div>

    <%--中间容器部分--%>
    <div data-options="region:'center',split:true">
        <div class="easyui-tabs" style="height: 100%" id="tt"></div>
    </div>
</div>
</body>
<script>

    /* 注册监听点击事件 */
    $(function () {
        // 默认页面
        addTab("#tt", "用户查询", "icon-zoom", "searchuser.jsp");

        $("#selectuser").click(function () {
            addTab("#tt", "用户查询", "icon-zoom", "searchuser.jsp");
        });
        $("#adduser").click(function () {
            addTab("#tt", "添加用户", "icon-groupadd", "adduser.jsp");
        });

        $("#selectdept").click(function () {
            addTab("#tt", "部门查询", "icon-zoom", "SelectUserServlet");
        });
        $("#adddept").click(function () {
            addTab("#tt", "添加部门", "icon-add", "SelectUserServlet");
        });

        $("#selectpost").click(function () {
            addTab("#tt", "职位查询", "icon-zoom", "SelectUserServlet");
        });
        $("#addpost").click(function () {
            addTab("#tt", "添加职位", "icon-add", "SelectUserServlet");
        });

        $("#selectemp").click(function () {
            addTab("#tt", "员工查询", "icon-zoom", "SelectUserServlet");
        });
        $("#addemp").click(function () {
            addTab("#tt", "添加员工", "icon-add", "SelectUserServlet");
        });

        $("#selectnotice").click(function () {
            addTab("#tt", "公告查询", "icon-zoom", "SelectUserServlet");
        });
        $("#addnotice").click(function () {
            addTab("#tt", "添加公告", "icon-add", "addnotice.jsp");
        });

        $("#download").click(function () {
            addTab("#tt", "文件下载", "icon-download", "DownloadServlet");
        });
        $("#upload").click(function () {
            addTab("#tt", "文件上传", "icon-upload", "UploadServlet");
        });
    });

    /* 添加或激活 Tab */
    function addTab(id, info, icon, url) {
        // 先判断是否存在,返回一个boolean值
        var res = $(id).tabs("exists", info);

        // 如果选项卡存在，则直接选中：select选中
        if (res) {
            //让table选中
            $(id).tabs("select", info);

        } else {// 如果不存在则添加
            // 调用添加tab的函数
            var content = '<iframe scrolling="auto" frameborder="0"  src="'
                + url + '" style="width:100%;height:100%;"></iframe>';
            $(id).tabs("add", {
                "iconCls": icon,
                "title": info,
                content: content,
                "closable": "true"
            });
        }
    }

    /* 当前时间 */
    var mytime = setInterval(function () {
        getTime();
    }, 1000);

    function getTime() {
        var d = new Date();
        var M = (d.getMonth() + 1) < 10 ? ('0' + (d.getMonth() + 1)) : (d.getMonth() + 1);
        var D = (d.getDate()) < 10 ? ('0' + (d.getDate())) : (d.getDate());
        var H = (d.getHours()) < 10 ? ('0' + (d.getHours())) : (d.getHours());
        var m = (d.getMinutes()) < 10 ? ('0' + (d.getMinutes())) : (d.getMinutes());
        var s = (d.getSeconds()) < 10 ? ('0' + (d.getSeconds())) : (d.getSeconds());
        var t = d.getFullYear() + "年" + M + "月" + D + "日&nbsp;&nbsp;&nbsp;&nbsp"
            + H + ":" + m + ":" + s + "&nbsp;&nbsp;&nbsp;&nbsp;星期"
            + "日一二三四五六".charAt(d.getDay());
        $("#ptime").html(t);
    }

</script>
</html>
