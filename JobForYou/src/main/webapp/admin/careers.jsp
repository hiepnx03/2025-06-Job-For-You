<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="org.example.jobforyou.model.Career" %>
<!DOCTYPE html>
<html>

<head>
    <title>Quản lý Ngành nghề</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
</head>

<body>
<jsp:include page="../navbar.jsp"/>

<div class="container mt-5">
    <h2>Quản lý Ngành nghề</h2>
    <a href="${pageContext.request.contextPath}/admin/add-career.jsp" class="btn btn-primary mb-3">Thêm
        ngành nghề mới</a>
    <table class="table table-bordered table-hover">
        <thead class="table-dark">
        <tr>
            <th>ID</th>
            <th>Tên ngành nghề</th>
            <th>Mô tả</th>
            <th style="width: 15%;">Hành động</th>
        </tr>
        </thead>
        <tbody>
        <% List<Career> careers = (List<Career>) request.getAttribute("careers");
            if (careers != null && !careers.isEmpty()) {
                for (Career career : careers) {
        %>
        <tr>
            <td>
                <%= career.getId() %>
            </td>
            <td>
                <%= career.getName() %>
            </td>
            <td>
                <%= career.getDescription() %>
            </td>
            <td>
                <a href="${pageContext.request.contextPath}/admin/edit-career?id=<%= career.getId() %>"
                   class="btn btn-warning btn-sm">Sửa</a>
                <a href="${pageContext.request.contextPath}/admin/delete-career?id=<%= career.getId() %>"
                   class="btn btn-danger btn-sm"
                   onclick="return confirm('Bạn có chắc chắn muốn xóa ngành nghề này không?')">Xóa</a>
            </td>
        </tr>
        <% }
        } else { %>
        <tr>
            <td colspan="4" class="text-center">Không có ngành nghề nào để hiển thị.
            </td>
        </tr>
        <% } %>
        </tbody>
    </table>
</div>

</body>

</html>