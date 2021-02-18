<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>修改</title>
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
</head>
<body>

<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h4>修改书籍</h4>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/book/toUpdateBook" method="post">
        <div class="form-group">
            <label for="bkname3">书籍编号</label>
            <input type="text" class="form-control" id="bkname3" name="bookID" required readonly value="${books.bookID}">
            <label for="bkname">书籍名称</label>
            <input type="text" class="form-control" id="bkname" name="bookName" required value="${books.bookName}">
            <label for="bkname1">书籍数量</label>
            <input type="text" class="form-control" id="bkname1" name="bookCounts" required value="${books.bookName}">
            <label for="bkname2">书籍信息</label>
            <input type="text" class="form-control" id="bkname2" name="detail" required value="${books.bookName}">
            <br>

            <input type="submit" class="form-control" value="修改" style="width: 50px; float: right" >
        </div>
    </form>


</div>


</body>
</html>
