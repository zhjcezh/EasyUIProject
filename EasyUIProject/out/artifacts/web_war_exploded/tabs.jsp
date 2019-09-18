<%--
  Created by IntelliJ IDEA.
  User: cfeng
  Date: 2019-09-18
  Time: 14:11
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
            var i = 1;
            $("#tabs").tabs({
                width:600,
                height:400,
                plain:false,
                fit:true,
                tools:[{
                    iconCls:'icon-add',
                    handler:function(){
                        $("#tabs").tabs('add',{
                            title:'选项卡'+i,
                            selected:true,
                            closable:true,
                            content:'选项卡Content'+ i++
                        })
                    }
                },{
                    iconCls:'icon-remove',
                    handler:function(){
                        /*1.获取选中的选项卡*/
                        var tab = $("#tabs").tabs('getSelected');
                        /*2.获取选项卡索引 */
                        var index = $("#tabs").tabs('getTabIndex',tab);
                        /*3.关闭标签*/
                        $("#tabs").tabs('close',index);
                    }
                }],
                toolPosition:'right',
                tabPosition:'top',
                /*headerWidth:100  只有标签在左右时才有效*/

            });


            $("#btn").linkbutton({
                text:'我的按钮',
            });
            /*禁用按钮*/
            $('#btn').linkbutton('disable');
            /*启用按钮*/
            $('#btn').linkbutton('enable');

        });

    </script>
</head>
<body>
    <%--tabs scc--%>
    <div id="tt" class="easyui-tabs" style="width:500px;height:250px;">
        <div title="Tab1" style="padding:20px;display:none;">
            tab1
        </div>
        <div title="Tab2" data-options="closable:true" style="overflow:auto;padding:20px;display:none;">
            tab2
        </div>
        <div title="Tab3" data-options="iconCls:'icon-reload',closable:true" style="padding:20px;display:none;">
            tab3
        </div>
    </div>
    <%--tabs js--%>
    <hr>
    <div style="width: 600px;height: 400px">
        <div id="tabs"></div>
    </div>

</body>
</html>
