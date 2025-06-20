<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="org.example.jobforyou.model.User" %>
<%@ page import="org.example.jobforyou.model.Career" %>

<!DOCTYPE html>
<html>

<head>
    <title>Nghề nghiệp</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/career.css">
    <jsp:include page="navbar.jsp"/>

</head>

<body>
<%
    User user_jsp = (User) session.getAttribute("user");
    boolean isAdmin_jsp = user_jsp != null && "admin".equals(user_jsp.getRole());
%>
<!-- Nội dung -->
<div class="container mt-5">
    <h2 class="fw-bold text-center mb-5">🌟 Khám phá các ngành nghề hot 🌟</h2>
    <% if (isAdmin_jsp) { %>
        <a href="admin/add-career.jsp" class="btn btn-primary mb-3">Thêm ngành nghề mới</a>
    <% } %>


    <div class="row justify-content-center">
        <% List<Career> careers = (List<Career>) request.getAttribute("careers");
            if (careers != null && !careers.isEmpty()) {
                for (Career career : careers) {
        %>
        <div class="col-md-5 col-lg-4 mb-4">
            <div class="card h-100 shadow">
                <div class="card-body text-center">
                    <h5 class="card-title">
                        <%= career.getName() %>
                    </h5>
                    <p class="card-text">
                        <%= career.getDescription() %>
                    </p>
                    <% if (isAdmin_jsp) { %>
                        <a href="admin/edit-career?id=<%= career.getId() %>" class="btn btn-warning btn-sm">Sửa</a>
                        <a href="admin/delete-career?id=<%= career.getId() %>"
                           class="btn btn-danger btn-sm"
                           onclick="return confirm('Bạn có chắc chắn muốn xóa ngành nghề này không?')">Xóa</a>
                    <% } %>
                </div>
            </div>
        </div>
        <% }
        } else { %>
        <p class="text-center">Không có ngành nghề nào để hiển thị.</p>
        <% } %>
    </div>
</div>

</body>

</html>