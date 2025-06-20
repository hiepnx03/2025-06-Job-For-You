<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>Thêm công ty mới</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>

<body>
<jsp:include page="../navbar.jsp"/>
<div class="container mt-5">
    <h2>Thêm công ty mới</h2>
    <form action="add-company" method="post">
        <div class="form-group">
            <label for="name">Tên công ty</label>
            <input type="text" class="form-control" id="name" name="name" required>
        </div>
        <div class="form-group">
            <label for="logoUrl">URL Logo</label>
            <input type="text" class="form-control" id="logoUrl" name="logoUrl" required>
        </div>
        <button type="submit" class="btn btn-primary">Thêm công ty</button>
        <a href="${pageContext.request.contextPath}/companies" class="btn btn-secondary">Hủy</a>
    </form>
</div>
</body>

</html>