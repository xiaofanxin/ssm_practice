<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" type="text/css"  href="<c:url value="/css/test.css"/> ">
</head>
<body>

<div id="content">
    <div class="login-header">
        <p style="text-align:center" >后台管理系统</p>
    </div>
    <form id="test_form" action="${pageContext.request.contextPath}/home/login" method="post">
        <div class="login-input-box">
            <span class="icon icon-user"></span>
            <input type="text" name="name" placeholder="请输入用户名">
        </div>
        <div class="login-input-box">
            <span class="icon icon-password"></span>
            <input type="password" name="password" placeholder="请输入密码">
        </div>
        <div class="login-button-box">
            <button onclick="javascript:doSubmitForm()">登录系统</button>
        </div>
    </form>


    <span style="font-color:red">${msg}</span>
</div>
<script>
    function doSubmitForm() {
        var form = document.getElementById('test_form');
        form.submit();
    }
</script>
</body>
</html>