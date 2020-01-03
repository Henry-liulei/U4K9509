<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/17
  Time: 18:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="demo.jsp"%>
<html>
<head>
    <title>Title</title>

    <script language="JavaScript" type="text/javascript">
            $(function () {
            $("#but").click(function () {
            /*    $.ajax({
                    type: "POST",
                    url: "showStudent",
                    dataType: "json",
                    success: function(data){
                        var str="<table border=1><tr><th>学号</th><th>姓名</th><th>性别</th><th>生日</th><th>年龄</th><th>地址</th><th>详情</th></tr>";
                        for (var i=0;i<data.length;i++){
                            var s=data[i];
                            str+="<tr><td>"+s.sno+"</td><td>"+s.sname+"</td><td>"+s.ssex+"</td><td>"+s.sage+"</td><td>"+s.sbirthday+"</td><td>"+s.saddtress+"</td><td><a href='javascript:showOne("+s.sno+")'>详情</a></td></tr>"
                        }
                        var str=str+"</table>";
                        $("#show").html(str);
                    }
                });*/

                $('#dg').datagrid({
                    url:'showStudent',
                    pagination:"true",
                    pageList:[3,5,10,20],
                    pageSize:3,
                    columns:[[
                        {field:'sno',title:'学号',width:100},
                        {field:'sname',title:'姓名',width:100},
                        {field:'sage',title:'年龄',width:100},
                        {field:'ssex',title:'性别',width:100},
                        {field:'sbirthday',title:'出生日期',width:100,
                            formatter : function(value){
                                var date = new Date(value);
                                var y = date.getFullYear();
                                var m = date.getMonth() + 1;
                                var d = date.getDate();
                                return y + '-' +m + '-' + d;
                            }
                            },
                        {field:'saddtress',title:'地址',width:100,align:'right'}
                    ]]
                });
            });
        })
        function showOne(sno){
            console.log(sno)
            $.get("findStudent","sno="+sno,function (data) {
                $("#no").html(data.sno);
                $("#name").html(data.sname);
                $("#sex").html(data.ssex);
                $("#birthday").html(data.sbirthday);
                $("#age").html(data.sage);
                $("#addtress").html(data.saddtress);
            })}

    </script>
</head>
<body>
<a id="but" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search'">加载数据</a>
<div id="show">
    <table id="dg"></table>
</div>
<hr>
学号：<span id="no"></span>
<br>
姓名：<span id="name"></span>
<br>
性别：<span id="sex"></span>
<br>
生日：<span id="birthday"></span>
<br>
年龄：<span id="age"></span>
<br>
地址：<span id="addtress"></span>
<br>

</body>
</html>
