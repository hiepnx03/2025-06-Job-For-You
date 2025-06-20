<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- CDN chung cho toàn bộ site -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

<% org.example.jobforyou.model.User user = (org.example.jobforyou.model.User) session.getAttribute("user");
    boolean
            isAdmin = user != null && "admin".equals(user.getRole()); %>
<nav class="navbar navbar-expand-lg px-5">
    <a class="navbar-brand" href="index">JOBS FOR YOU</a>
    <div class="collapse navbar-collapse">
        <ul class="navbar-nav ms-auto">
            <li class="nav-item"><a class="nav-link" href="index">Trang chủ</a></li>
            <li class="nav-item"><a class="nav-link" href="jobs">Việc làm</a></li>
            <li class="nav-item"><a class="nav-link" href="companies">Công ty</a></li>
            <li class="nav-item"><a class="nav-link" href="career">Nghề nghiệp</a></li>
            <li class="nav-item"><a class="nav-link" href="contact">Liên hệ</a></li>
            <% if (isAdmin) { %>
            <li class="nav-item"><a class="nav-link" href="admin">Quản trị</a></li>
            <% } %>
        </ul>
    </div>
</nav>
