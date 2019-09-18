<%--
  Created by IntelliJ IDEA.
  User: cfeng
  Date: 2019-09-18
  Time: 15:00
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

            $('#dg').datagrid({
                width:1000,
                height:500,
                url:'datagrid_data.json',
                columns:[[
                    {field:'id',checkbox:true},
                    {field:'name',title:'姓名',width:100,align:'center'},
                    {field:'date',title:'入职时间',width:100,align:'left'},
                    {field:'email',title:'邮箱',width:100,align:'right'},
                    {field:'department',title:'部门',width:100,align:'center',formatter: function(value,row,index){
                            console.log(row);
                            if(row.department.name){
                                return row.department.name;
                            }
                        }},
                    {field:'state',title:'状态',width:100,align:'center',formatter: function(value,row,index){
                            console.log(row);
                            if(row.state){
                                return "在职"
                            }else {
                                return "<font color='red'>离职</font>"
                            }
                    }}
                ]],
                fitColumns:true,
                /*scrollbarSize:2*/
                striped:true,
                singleSelect:true,
                rownumbers:true,
                checkOnSelect:true
            });


        });
    </script>

</head>
<body>

    <table id="dg"></table>

</body>
</html>