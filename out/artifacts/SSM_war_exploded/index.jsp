<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
</head>
<style>
    a {
        text-decoration: none;
        color: #000000;
        font-size: 18px;
    }

    h3 {
        width: 138px;
        height: 38px;
        margin: 100px auto;
        text-align: center;
        line-height: 38px;
        background: deepskyblue;
        border-radius: 5px;
    }

</style>
<body>
<h3>
    <a href="${pageContext.request.contextPath}/book/allBook">
        跳转到书籍展示
    </a>
</h3>
</body>
</html>
