<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>Thêm ngành nghề mới</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>

<body>
<jsp:include page="../navbar.jsp"/>
<div class="container mt-5">
    <h2>Thêm ngành nghề mới</h2>
    <form action="${pageContext.request.contextPath}/admin/add-career" method="post">
        <div class="form-group">
            <label for="name">Tên ngành nghề</label>
            <input type="text" class="form-control" id="name" name="name" required>
        </div>
        <div class="form-group">
            <label for="description">Mô tả</label>
            <textarea class="form-control" id="description" name="description" rows="3" required></textarea>
        </div>
        <button type="submit" class="btn btn-primary">Thêm ngành nghề</button>
        <a href="${pageContext.request.contextPath}/admin/careers" class="btn btn-secondary">Hủy</a>
    </form>
</div>
</body>

</html>