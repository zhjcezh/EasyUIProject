<%--
  Created by IntelliJ IDEA.
  User: cfeng
  Date: 2019-09-18
  Time: 13:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/uimaker/easyui.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/uimaker/icon.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/easyui/easyui-lang-zh_CN.js"></script>
    <script>
        $(function () {
           $("#dialog").dialog({
               width:600,
               height:400,
               title:"MyDialog",
               toolbar:[
                   {
                       text:'保存',
                       iconCls:'icon-save',
                       handler:function () {alert('add')}
                   },{
                       iconCls:'icon-edit',
                       handler:function () {alert('edit')}
                   }
               ],
               buttons:[
                   {
                       text:'保存',
                       handler:function () {alert('save')}
                   },{
                       text:'关闭',
                       handler:function () {
                            $("#dialog").dialog('close')
                       }
                   }
               ]
           })
        });
    </script>
</head>
<body>
    <div id="dialog"></div>
</body>
</html>
