<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/20
  Time: 8:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="demo.jsp"%>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" language="JavaScript">
        $(function () {
           /* $('#tt').tabs({
                border:false,
                onSelect:function(title){
                    alert(title+' is selected');
                }
            });*/

            $('#tt').tabs('add',{
                title:'New Tab',
                content:'Tab Body',
                closable:true,
                tools:[{
                    iconCls:'icon-mini-refresh',
                    handler:function(){
                        alert('refresh');
                    }
                }]
            });
        })
    </script>
</head>
<body>
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
<a id="btn" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search'">easyui</a>
<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search'"
   onclick="javascript:alert('easyui')">easyui</a>
</body>
</html>
