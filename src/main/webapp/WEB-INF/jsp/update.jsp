<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <form action="${pageContext.request.contextPath}/updatess">
        id:<input type="hidden" name="id" value="${user.id}">
        username：<input type="text" name="username" value="${user.username}"><br>
        truename：<input type="text" name="truename" value="${user.truename}"><br>
        password：<input type="text" name="password" value="${user.password}"><br>
        email：<input type="text" name="email" value="${user.email}"><br>
        phone：<input type="text" name="phone" value="${user.phone}"><br>
        addDate：<input type="text" name="addDate" value="${user.addDate}"><br>
        enable：<input type="text" name="enable" value="${user.enable}"><br>
        <input type="submit" value="修改">
    </form>

</body>
</html>
