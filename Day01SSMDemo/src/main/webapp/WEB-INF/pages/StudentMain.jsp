<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/16
  Time: 19:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="${pageContext.request.contextPath}/show" method="post">
        <table border="2">
            <th>学号</th>
            <th>姓名</th>
            <th>性别</th>
            <th>生日</th>
            <th>年龄</th>
            <th>地址</th>
    <c:forEach items="${studentList}" var="s">
        <tr>
            <td>${s.sno}</td><td>${s.sname}</td><td>${s.ssex}</td><td>${s.sage}</td><td>${s.sbirthday}</td><td>${s.saddtress}</td>
        </tr>
    </c:forEach>
        </table>
    </form>

</body>
</html>
