<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="js/jquery.js"></script>
</head>
<body>

<table border="1px">
    <
    <tr>
        <th>id编号</th>
        <th>账号</th>
        <th>真实姓名</th>
        <th>密码</th>
        <th>邮箱</th>
        <th>电话</th>
        <th>注册时间</th>
        <th>是否激活</th>
        <th colspan="3">操作</th>
    </tr>
    <c:forEach items="${users}" var="u">
        <tr>
            <td>${u.id}</td>
            <td>${u.username}</td>
            <td>${u.truename}</td>
            <td>${u.password}</td>
            <td>${u.email}</td>
            <td>${u.phone}</td>
            <td>${u.addDate}</td>
            <td>${u.enable}</td>
            <td>
                <a class="updata" href="update/${u.id}">修改</a>
            </td>
            <td>
                <a href="allter">添加</a>

            </td>
            <td>
              <a class="delete" href="delete/${u.id}">删除</a>

            </td>
        </tr>

    </c:forEach>

</table>

</body>
</html>
