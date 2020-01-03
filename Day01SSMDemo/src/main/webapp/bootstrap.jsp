<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/20
  Time: 11:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap-theme.css">
    <script language="JavaScript" type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.js"></script>
    <script language="JavaScript" type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.js"></script>
    <script language="JavaScript" type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/bootstrap-table.js"></script>

    <script language="JavaScript" type="text/javascript">
        $(function () {
            $('#table').bootstrapTable({
                url: 'showStudent',
                pagination: true,
                columns: [
                    {field:'sno',title:'学号'},
                    {field:'sname',title:'姓名'},
                    {field:'sage',title:'年龄'},
                    {field:'ssex',title:'性别'},
                    {field:'sbirthday',title:'出生日期'},
                    {field:'saddtress',title:'地址',align:'right'}
                ]
            })
        })
    </script>
</head>
<body>

<table id="table"></table>
</body>
</html>
