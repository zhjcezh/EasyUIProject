<%--
  Created by IntelliJ IDEA.
  User: cfeng
  Date: 2019-09-18
  Time: 13:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>easyUI</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/uimaker/easyui.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/uimaker/icon.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/easyui/easyui-lang-zh_CN.js"></script>
  </head>
  <script>
    $(function () {
      $("#btn").linkbutton({
        iconCls:'icon-search'
      });
      $("#myPanel").panel({
        title:"我的面板",
        width:300,
        height:300,
        content:'<p>panel content.</p><p>panel content.</p>',
        iconCls:'icon-save',
        collapsible:true,
        closable:true,
        minimizable:true,
        maximizable:true,
        href:"a.html",
        loadingMessage:"正在努力加载中...",
        /*事件名称：回调方法*/
        onCollapse:function () {
          alert("监听到面板折叠")
        }
      });
      $("#mybtn").click(function () {
        /*重新设置面板标题*/
        $("#myPanel").panel("setTitle","新标题");
        $("#myPanel").panel("resize",{
          width:600,
          height:200
        });
      });
      /*-----------------window----------------------*/
      $("#window").window({
        width:300,
        height:300,
        title:"MyWindow",
        modal:true,/*定义背后是否有遮罩*/
        draggable:false,/*是否可以拖拽窗口*/
        resizable:false,/*是否可以改变大小*/
        //tools:'#tt'
        tools:[
          {
            iconCls:'icon-add',
            handler:function () {alert('add')}
          },{
            iconCls:'icon-edit',
            handler:function () {alert('edit')}
          }
        ]
      })
    })
  </script>
  <body>

    <div id="tt">
      <a href="#" class="icon-add" onclick="javascript:alert('add')"></a>
      <a href="#" class="icon-edit" onclick="javascript:alert('edit')"></a>
    </div>


    <%--css样式--%>
    <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-add'">超链接</a>
    <hr>
    <%--js样式--%>
    <a href="#" id="btn">超链接</a>
    <hr>
    <%--panel css--%>
    <div id="p" class="easyui-panel" title="My Panel"
         style="width:500px;height:150px;padding:10px;background:#fafafa;"
         data-options="iconCls:'icon-save',closable:true,
                collapsible:true,minimizable:true,maximizable:true">
      <p>panel content.</p>
      <p>panel content.</p>
    </div>
    <hr>
    <%--panel js--%>
    <div id="myPanel"></div>
    <hr>
    <div class="easyui-linkbutton" id="mybtn">按钮</div>
    <%--window 扩展自panel--%>
    <hr>
    <div id="window"></div>
  </body>
</html>