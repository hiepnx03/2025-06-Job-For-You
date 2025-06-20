<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="org.example.jobforyou.model.User" %>
<%@ page import="org.example.jobforyou.model.Job" %>

<!DOCTYPE html>
<html>
<head>
    <title>Việc làm</title>
    <meta charset="UTF-8">
    <jsp:include page="navbar.jsp"/>
    <link rel="stylesheet" href="css/jobs.css">
</head>
<body>
<%
    User user_jsp = (User) session.getAttribute("user");
    boolean isAdmin_jsp = user_jsp != null && "admin".equals(user_jsp.getRole());
%>

<div class="container mt-5 mb-5">
    <div class="section-title">🔥 Việc làm nổi bật</div>

    <% if (isAdmin_jsp) { %>
        <a href="admin/add-job.jsp" class="btn btn-primary mb-3">Thêm công ty mới</a>
    <% } %>

    <div class="row">
        <%
            List<Job> jobs = (List<Job>) request.getAttribute("jobs");
            if (jobs != null && !jobs.isEmpty()) {
                for (Job job : jobs) {
        %>
        <div class="col-md-4">
            <div class="card job-card bg-light text-dark mb-4 p-3">
                <h5 class="job-title"><%= job.getTitle() %></h5>
                <p class="job-info">
                    🏢 <%= job.getCompany() %> |
                    📍 <%= job.getLocation() %> |
                    💰 Lương: <%= job.getSalary() %>
                </p>
                <a href="job-detail?id=<%= job.getId() %>" class="btn btn-primary">Xem chi tiết</a>
                <% if (isAdmin_jsp) { %>
                    <a href="admin/edit-job?id=<%= job.getId() %>" class="btn btn-warning btn-sm">Sửa</a>
                    <a href="admin/delete-job?id=<%= job.getId() %>"
                       class="btn btn-danger btn-sm"
                       onclick="return confirm('Bạn có chắc chắn muốn xóa công việc này không?')">Xóa</a>
                <% } %>
            </div>
        </div>
        <%
                }
            } else {
        %>
        <p class="no-jobs">Không có việc làm nào để hiển thị.</p>
        <% } %>
    </div>
</div>

</body>
</html>
