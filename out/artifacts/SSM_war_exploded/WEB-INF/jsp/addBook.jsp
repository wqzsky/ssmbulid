<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>添加</title>
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
</head>
<body>

<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h4>新增书籍</h4>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/book/addBook" method="post">
        <div class="form-group">
            <label for="bkname">书籍名称</label>
            <input type="text" class="form-control" id="bkname" name="bookName" required>
            <label for="bkname1">书籍数量</label>
            <input type="text" class="form-control" id="bkname1" name="bookCounts" required>
            <label for="bkname2">书籍信息</label>
            <input type="text" class="form-control" id="bkname2" name="detail" required>
            <br>

            <input type="submit" class="form-control" value="添加" style="width: 50px; float: right" >
        </div>
    </form>


</div>


</body>
</html>
