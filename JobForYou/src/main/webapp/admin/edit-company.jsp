<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.example.jobforyou.model.Company" %>
<html>

<head>
    <title>Sửa thông tin công ty</title>
</head>

<body>
<jsp:include page="../navbar.jsp"/>

<div class="container mt-5">
    <h2>Sửa thông tin công ty</h2>
    <% Company company = (Company) request.getAttribute("company"); %>
    <form action="edit-company" method="post">
        <input type="hidden" name="id" value="<%= company.getId() %>">
        <div class="form-group">
            <label for="name">Tên công ty</label>
            <input type="text" class="form-control" id="name" name="name"
                   value="<%= company.getName() %>" required>
        </div>
        <div class="form-group">
            <label for="logoUrl">URL Logo</label>
            <input type="text" class="form-control" id="logoUrl" name="logoUrl"
                   value="<%= company.getLogoUrl() %>" required>
        </div>
        <button type="submit" class="btn btn-primary">Cập nhật</button>
        <a href="${pageContext.request.contextPath}/companies" class="btn btn-secondary">Hủy</a>
    </form>
</div>
</body>

</html>