<%--
  Created by IntelliJ IDEA.
  User: cfeng
  Date: 2019-09-18
  Time: 14:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/uimaker/easyui.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/uimaker/icon.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/easyui/easyui-lang-zh_CN.js"></script>
  </head>
  <script>
    $(function () {
        $("#acc").accordion({
           width:500,
           height:500,
            fit:false,
            animate:true,
            onSelect:function (title) {
                alert(title)
            }
        });
        $('#acc').accordion('add', {
            title: '新标题',
            content: '新内容',
            selected: false
        });
        $('#acc').accordion('add', {
            title: '新标题2',
            content: '新内容2',
            selected: true
        });

    });
  </script>
  <body>

  <div id="aa" class="easyui-accordion" style="width:300px;height:200px;">
    <div title="Title1" data-options="iconCls:'icon-save'" style="overflow:auto;padding:10px;">
      <h3 style="color:#0099FF;">Accordion for jQuery</h3>
      <p>Accordion is a part of easyui framework for jQuery.
        It lets you define your accordion component on web page more easily.</p>
    </div>
    <div title="Title2" data-options="iconCls:'icon-reload',selected:true" style="padding:10px;">
      content2
    </div>
    <div title="Title3">
      content3
    </div>
  </div>


  <hr>
  <div id="acc" class="easyui-accordion">
  </div>



  </body>
</html>
