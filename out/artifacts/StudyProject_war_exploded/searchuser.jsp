<%--
  Created by IntelliJ IDEA.
  User: Lin
  Date: 2019/9/22
  Time: 17:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>selectUser</title>
    <link rel="stylesheet" type="text/css"
          href="easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="easyui/themes/icon.css">
    <script type="text/javascript" src="easyui/jquery.min.js"></script>
    <script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
</head>
<body>
<div title="查询用户">
    <table id="dg" title="Custom DataGrid Pager" style="width:100%;height:400px"
           data-options="rownumbers:true,singleSelect:true,pagination:true,url:'datagrid_data1.json',method:'get'">
        <thead>
        <tr>
            <th data-options="field:'itemid',align:'center',resizable:false"
                width="10%">编号
            </th>
            <th data-options="field:'productid',align:'center',resizable:false"
                width="20%">姓名
            </th>
            <th data-options="field:'listprice',align:'center',resizable:false"
                width="20%">登录名
            </th>
            <th data-options="field:'unitcost',align:'center',resizable:false"
                width="20%">密码
            </th>
            <th data-options="field:'attr1',align:'center'  ,resizable:false"
                width="20%">注册日期
            </th>
            <th data-options="field:'status',align:'center',resizable:false"
                width="10%">状态
            </th>
        </tr>
        </thead>
    </table>
    <script type="text/javascript">
        $(function () {
            var pager = $('#dg').datagrid().datagrid('getPager');	// get the pager of datagrid
            pager.pagination({
                buttons: [{
                    iconCls: 'icon-search',
                    handler: function () {
                        alert('search');
                    }
                }, {
                    iconCls: 'icon-add',
                    handler: function () {
                        alert('add');
                    }
                }, {
                    iconCls: 'icon-edit',
                    handler: function () {
                        alert('edit');
                    }
                }]
            });
        })
    </script>
</div>
</body>
</html>
