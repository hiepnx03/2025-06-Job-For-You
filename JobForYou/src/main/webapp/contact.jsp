<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.example.jobforyou.model.Contact" %>
<!DOCTYPE html>
<html>

<head>
    <title>Liên hệ</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/contact.css">
</head>

<body>
<jsp:include page="navbar.jsp"/>

<!-- Nội dung -->
<div class="container mt-5">
    <h2 class="fw-bold text-center mb-4">Liên hệ với chúng tôi</h2>
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="contact-card">
                <% Contact contact = (Contact) request.getAttribute("contact");
                    if (contact != null) { %>
                <p><i class="fas fa-envelope contact-icon"></i> Email: <%= contact.getEmail() %>
                </p>
                <p><i class="fas fa-phone contact-icon"></i> Hotline: <%= contact.getPhone() %>
                </p>
                <p><i class="fas fa-map-marker-alt contact-icon"></i> Địa chỉ: <%= contact.getAddress()
                %>
                </p>
                <% } else { %>
                <p class="text-center">Không có thông tin liên hệ để hiển thị.</p>
                <% } %>
            </div>
        </div>
    </div>
</div>

</body>

</html>