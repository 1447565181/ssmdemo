<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: winx
  Date: 2020/3/20
  Time: 17:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <form action="${pageContext.request.contextPath}/allterss" method="post">
      username：<input type="text" name="username"><br>
      truename：<input type="text" name="truename"><br>
      password：<input type="text" name="password"><br>
      email：<input type="text" name="email"><br>
      phone：<input type="text" name="phone"><br>
      enable：<input type="text" name="enable"><br>
      <td><input type="reset" value="reset"/></td>
      <input type="submit" value="添加用户">
  </form>
</body>
</html>
