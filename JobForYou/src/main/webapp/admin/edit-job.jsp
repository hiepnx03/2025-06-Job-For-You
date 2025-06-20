<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.example.jobforyou.model.Job" %>
<html>

<head>
    <title>Edit Job</title>
</head>
<body>
<jsp:include page="../navbar.jsp"/>

<div class="container mt-5">
    <h2>Sửa thông tin việc làm</h2>
    <% Job job = (Job) request.getAttribute("job"); %>
    <form action="edit-job" method="post">
        <input type="hidden" name="id" value="<%= job.getId() %>">
        <div class="form-group">
            <label for="title">Chức danh</label>
            <input type="text" class="form-control" id="title" name="title"
                   value="<%= job.getTitle() %>" required>
        </div>
        <div class="form-group">
            <label for="company">Công ty</label>
            <input type="text" class="form-control" id="company" name="company"
                   value="<%= job.getCompany() %>" required>
        </div>
        <div class="form-group">
            <label for="location">Địa điểm</label>
            <input type="text" class="form-control" id="location" name="location"
                   value="<%= job.getLocation() %>" required>
        </div>
        <div class="form-group">
            <label for="description">Mô tả</label>
            <textarea class="form-control" id="description" name="description" rows="5"
                      required><%= job.getDescription() %></textarea>
        </div>
        <div class="form-group">
            <label for="requirement">Yêu cầu</label>
            <textarea class="form-control" id="requirement" name="requirement" rows="5"
                      required><%= job.getRequirement() %></textarea>
        </div>
        <div class="form-group">
            <label for="salary">Lương</label>
            <input type="text" class="form-control" id="salary" name="salary"
                   value="<%= job.getSalary() %>">
        </div>
        <div class="form-group">
            <label for="jobType">Loại hình công việc</label>
            <input type="text" class="form-control" id="jobType" name="jobType"
                   value="<%= job.getJob_type() != null ? job.getJob_type() : "" %>">
        </div>
        <button type="submit" class="btn btn-primary">Cập nhật</button>
        <a href="${pageContext.request.contextPath}/jobs" class="btn btn-secondary">Hủy</a>
    </form>
</div>
</body>

</html>