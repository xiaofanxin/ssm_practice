<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>测试接收JSON格式的数据</title>
    <meta http-equiv="Content-Type" content="text/html";charset="UTF-8"/>
</head>
<body>
<script src="<c:url value="/js/jquery.min.js"/>"></script>


<script>
    $(function(){
        testRequestBody();
    });
    function testRequestBody() {
        var sendData = {id:1,name:"String MVC企业应用",user:{id:9,name:"张三",password:"123456"},memberList:[{userId:20,userName:"李四"},{userId:21,userName:"王五"}]};

        $.ajax({
            dataType:"json",
            url:"${pageContext.request.contextPath}/home/testRequestBodyParam",
            type:"post",
            contentType:"application/json",   //发送信息至服务器时的内容编码格式
            data:JSON.stringify(sendData),   //发送到服务器的数据
            success:function(data){
                   console.log(data);
            },
            error:function(){
                    alert("数据发送失败")
            }
        })
    }
</script>

</body>
</html>
