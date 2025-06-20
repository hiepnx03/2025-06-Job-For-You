<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Đăng ký</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<jsp:include page="navbar.jsp"/>

<body class="bg-dark text-white">
<div class="container mt-5">
    <h2>Đăng ký tài khoản</h2>
    <c:if test="${not empty error}">
        <div class="alert alert-danger">${error}</div>
    </c:if>
    <form action="register" method="post">
        <div class="mb-3">
            <label for="name" class="form-label">Họ và tên:</label>
            <input type="text" name="name" class="form-control" required/>
        </div>
        <div class="mb-3">
            <label for="email" class="form-label">Email:</label>
            <input type="email" name="email" class="form-control" required/>
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">Mật khẩu:</label>
            <input type="password" name="password" class="form-control" required/>
        </div>
        <button type="submit" class="btn btn-danger">Đăng ký</button>
    </form>
</div>
</body>

</html>