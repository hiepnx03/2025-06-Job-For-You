<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>Add New Job</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>

<body>
<jsp:include page="../navbar.jsp"/>

<div class="container mt-5">
    <h2>Thêm việc làm mới</h2>
    <form action="add-job" method="post">
        <div class="form-group">
            <label for="title">Chức danh</label>
            <input type="text" class="form-control" id="title" name="title" required>
        </div>
        <div class="form-group">
            <label for="company">Công ty</label>
            <input type="text" class="form-control" id="company" name="company" required>
        </div>
        <div class="form-group">
            <label for="location">Địa điểm</label>
            <input type="text" class="form-control" id="location" name="location" required>
        </div>
        <div class="form-group">
            <label for="description">Mô tả</label>
            <textarea class="form-control" id="description" name="description" rows="5" required></textarea>
        </div>
        <div class="form-group">
            <label for="requirement">Yêu cầu</label>
            <textarea class="form-control" id="requirement" name="requirement" rows="5" required></textarea>
        </div>
        <div class="form-group">
            <label for="salary">Lương</label>
            <input type="text" class="form-control" id="salary" name="salary">
        </div>
        <div class="form-group">
            <label for="jobType">Loại hình công việc</label>
            <input type="text" class="form-control" id="jobType" name="jobType">
        </div>
        <button type="submit" class="btn btn-primary">Thêm việc làm</button>
        <a href="${pageContext.request.contextPath}/jobs" class="btn btn-secondary">Hủy</a>
    </form>
</div>
</body>

</html>