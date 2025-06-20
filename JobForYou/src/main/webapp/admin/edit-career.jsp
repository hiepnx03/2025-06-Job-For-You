<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.example.jobforyou.model.Career" %>
<html>

<head>
    <title>Sửa thông tin ngành nghề</title>
</head>

<body>
<jsp:include page="../navbar.jsp"/>
<div class="container mt-5">
    <h2>Sửa thông tin ngành nghề</h2>
    <% Career career = (Career) request.getAttribute("career"); %>
    <form action="${pageContext.request.contextPath}/admin/edit-career" method="post">
        <input type="hidden" name="id" value="<%= career.getId() %>">
        <div class="form-group">
            <label for="name">Tên ngành nghề</label>
            <input type="text" class="form-control" id="name" name="name"
                   value="<%= career.getName() %>" required>
        </div>
        <div class="form-group">
            <label for="description">Mô tả</label>
            <textarea class="form-control" id="description" name="description" rows="3"
                      required><%= career.getDescription() %></textarea>
        </div>
        <button type="submit" class="btn btn-primary">Cập nhật</button>
        <a href="${pageContext.request.contextPath}/admin/careers" class="btn btn-secondary">Hủy</a>
    </form>
</div>
</body>

</html>