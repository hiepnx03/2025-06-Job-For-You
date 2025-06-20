<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="org.example.jobforyou.model.Company" %>
<%@ page import="org.example.jobforyou.model.User" %>
<!DOCTYPE html>
<html>

<head>
    <title>Quản lý Công ty</title>
    <jsp:include page="navbar.jsp"/>
</head>

<body>
<% User user_jsp = (User) session.getAttribute("user");
    boolean isAdmin_jsp = user_jsp != null && "admin"
            .equals(user_jsp.getRole()); %>
<div class="container mt-5">
    <h2 class="text-center">Danh sách Công ty</h2>
    <% if (isAdmin_jsp) { %>
    <a href="admin/add-company.jsp" class="btn btn-primary mb-3">Thêm công ty mới</a>
    <% } %>
    <table class="table table-bordered table-hover">
        <thead class="table-dark">
        <tr>
            <th>ID</th>
            <th>Logo</th>
            <th>Tên công ty</th>
            <% if (isAdmin_jsp) { %>
            <th style="width: 15%;">Hành động</th>
            <% } %>
        </tr>
        </thead>
        <tbody>
        <% List<Company> companies = (List<Company>)
                request.getAttribute("companies");
            if (companies != null && !companies.isEmpty()) {
                for (Company company : companies) {
        %>
        <tr>
            <td>
                <%= company.getId() %>
            </td>
            <td><img src="<%= company.getLogoUrl() %>"
                     alt="<%= company.getName() %>" width="50"></td>
            <td>
                <%= company.getName() %>
            </td>
            <% if (isAdmin_jsp) { %>
            <td>
                <a href="admin/edit-company?id=<%= company.getId() %>"
                   class="btn btn-warning btn-sm">Sửa</a>
                <a href="admin/delete-company?id=<%= company.getId() %>"
                   class="btn btn-danger btn-sm"
                   onclick="return confirm('Bạn có chắc chắn muốn xóa công ty này không?')">Xóa</a>
            </td>
            <% } %>
        </tr>
        <% }
        } else { %>
        <tr>
            <td colspan="<%= isAdmin_jsp ? 4 : 3 %>"
                class="text-center">Không có công ty nào để hiển thị.
            </td>
        </tr>
        <% } %>
        </tbody>
    </table>
</div>
</body>

</html>