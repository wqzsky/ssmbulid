<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>书籍展示</title>
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
</head>
<body>

<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h4>书籍列表————————显示所有书籍</h4>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/toAddBook">新增书籍</a>

            <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/allBook">显示全部书籍</a>
        </div>
        <div class="col-md-4 column"></div>
        <div class="col-md-4 column">
            <form action="${pageContext.request.contextPath}/book/queryBook" method="post" style="float: right;display: flex">
                <input type="text" class="form-control" name="queryBookName" placeholder="请输入你要查询的书籍"/>
                <input type="submit" value="查询" class="btn-primary btn" />
            </form>
        </div>
    </div>

    <div class="col-md-12 column">
        <div class="page-header">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>书籍编号</th>
                    <th>书籍名称</th>
                    <th>书籍数量</th>
                    <th>书籍详情</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${books}" var="book">
                <tr>
                    <th>${book.bookID}</th>
                    <th>${book.bookName} </th>
                    <th>${book.bookCounts}</th>
                    <th>${book.detail}</th>
                    <th>
                        <a href="${pageContext.request.contextPath}/book/updateBook?id=${book.bookID}">修改</a>
                        &nbsp;|&nbsp;
                        <a href="${pageContext.request.contextPath}/book/deleteBook?id=${book.bookID}" onclick="return confirm('您确认是否删除？');">删除</a>
                    </th>
                </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

</div>


</body>
</html>
