<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="org.example.jobforyou.model.Job" %>
<!DOCTYPE html>
<html>

<head>
    <title>Admin Dashboard</title>
</head>

<body>
<jsp:include page="../navbar.jsp"/>
<h1>HELLO WORLD</h1>

<div class="container mt-5">
    <h2>Trang quản trị</h2>
    <ul>
<%--        <li><a href="${pageContext.request.contextPath}/admin/careers">Quản lý Ngành nghề</a></li--%>
        <%-- Add links to other management pages here, e.g., companies, jobs --%>
    </ul>
</div>


<!-- <div class="container mt-5">
                    <h2>Quản lý Việc làm</h2>
                    <a href="admin/add-job.jsp" class="btn btn-primary mb-3">Thêm việc làm mới</a>
                    <table class="table table-bordered table-hover">
                        <thead class="table-dark">
                            <tr>
                                <th>ID</th>
                                <th>Chức danh</th>
                                <th>Công ty</th>
                                <th>Địa điểm</th>
                                <th>Loại công việc</th>
                                <th style="width: 15%;">Hành động</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% List<Job> jobs = (List<Job>) request.getAttribute("jobs");
                                    if (jobs != null && !jobs.isEmpty()) {
                                    for (Job job : jobs) {
                                    %>
                                    <tr>
                                        <td>
                                            <%= job.getId() %>
                                        </td>
                                        <td>
                                            <%= job.getTitle() %>
                                        </td>
                                        <td>
                                            <%= job.getCompany() %>
                                        </td>
                                        <td>
                                            <%= job.getLocation() %>
                                        </td>
                                        <td>
                                            <%= job.getJob_type() !=null ? job.getJob_type() : "" %>
                                        </td>
                                        <td>
                                            <a href="admin/edit-job?id=<%= job.getId() %>"
                                                class="btn btn-warning btn-sm">Sửa</a>
                                            <a href="admin/delete-job?id=<%= job.getId() %>" class="btn btn-danger btn-sm"
                                                onclick="return confirm('Bạn có chắc chắn muốn xóa việc làm này không?')">Xóa</a>
                                        </td>
                                    </tr>
                                    <% } } else { %>
                                        <tr>
                                            <td colspan="6" class="text-center">Không có việc làm nào để hiển thị.</td>
                                        </tr>
                                        <% } %>
                        </tbody>
                    </table>
                </div> -->

</body>

</html>