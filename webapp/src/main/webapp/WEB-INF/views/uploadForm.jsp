<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图片文件上传</title>
    <meta http-equiv="Content-Type" content="text/html";charset="UTF-8"/>
</head>
<body>
<script src="<c:url value="/js/jquery.min.js"/>"></script>

<h2>文件上传</h2>

<form action="${pageContext.request.contextPath}/home/upload" enctype="multipart/form-data" method="POST">
    <table>
        <tr>
            <td>文件描述：</td>
            <td><input type="text" name="description"/></td>
        </tr>
        <tr>
            <td>请选择文件：</td>
            <td><input type="file" name="file"></td>
        </tr>
        <tr>
            <td><input type="submit" value="上传"/> </td>
        </tr>
    </table>
</form>


</body>
</html>
