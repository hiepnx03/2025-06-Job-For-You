<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <title>Jobs For You</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/index.css">
</head>

<body>
<jsp:include page="navbar.jsp"/>

<!-- Top bar: Login/Register -->
<div class="top-bar">
    <a href="login.jsp" class="btn btn-primary">Đăng nhập</a>
    <a href="register.jsp" class="btn btn-danger">Đăng ký</a>
</div>

<!-- Main content -->
<div class="container text-center">
    <h1 class="mt-3 fw-bold">Top 1000 Công việc tốt nhất</h1>

    <!-- Search form -->
    <div class="container mt-4">
        <form class="row justify-content-center align-items-center" action="search" method="get">

            <div class="col-md-3">
                <select class="form-select" name="location">
                    <option selected>Tất cả các thành phố</option>
                    <option>Hà Nội</option>
                    <option>TP. Hồ Chí Minh</option>
                    <option>Đà Nẵng</option>
                    <option>Cần Thơ</option>
                </select>
            </div>
            <div class="col-md-7">
                <input type="text" class="form-control" placeholder="Tìm kiếm việc làm, công ty, kỹ năng"
                       name="keyword">
            </div>
            <div class="col-md-2">
                <button type="submit" class="btn btn-danger w-100">
                    🔍 Tìm kiếm
                </button>
            </div>
    </div>

    <!-- Keyword tags -->
    <div class="keyword-tags text-start mt-4">
        <p class="ms-2 mb-2">Mọi người đang tìm kiếm:</p>
        <div class="d-flex flex-wrap ms-2">
            <span class="keyword">Java</span>
            <span class="keyword">Kế toán</span>
            <span class="keyword">Thiết kế đồ họa UI/UX</span>
            <span class="keyword">Business Analyst</span>
        </div>
    </div>
</div>

<!-- Featured Companies -->
<h2 class="mt-5 text-center">Các công ty hàng đầu</h2>
<div class="row companies justify-content-center mt-3">
    <div class="col-md-2 card p-3 m-2">
        <img src="https://images.vietnamworks.com/logo/capge_vip_124731.png" alt="Capgemini">
        <div class="card-body">
            <p class="card-text">Capgemini Việt Nam</p>
        </div>
    </div>
    <div class="col-md-2 card p-3 m-2">
        <img src="https://images.vietnamworks.com/logo/tekex_vip1_101558.png" alt="Tek Experts">
        <div class="card-body">
            <p class="card-text">Tek Experts</p>
        </div>
    </div>
    <div class="col-md-2 card p-3 m-2">
        <img src="https://tse1.mm.bing.net/th/id/OIP.4HXBXvmEA3KWETL-UxrcXgHaGW?rs=1&pid=ImgDetMain"
             alt="FPT Software">
        <div class="card-body">
            <p class="card-text">FPT Software</p>
        </div>
    </div>
    <div class="col-md-2 card p-3 m-2">
        <img src="https://images.vietnamworks.com/logo/bacabank_vip1_117492.png" alt="Ngân hàng TMCP Bắc Á">
        <div class="card-body">
            <p class="card-text">Ngân hàng TMCP Bắc Á</p>
        </div>
    </div>
    <div class="col-md-2 card p-3 m-2">
        <img src="https://images.vietnamworks.com/logo/cityland_vip_124712.png" alt="Tập đoàn CityLand">
        <div class="card-body">
            <p class="card-text">Tập đoàn Cityland</p>
        </div>
    </div>
</div>
</div>

<!-- JavaScript -->
<script>
    document.addEventListener("DOMContentLoaded", function () {
        const tags = document.querySelectorAll('.keyword');
        const input = document.querySelector('input[name="keyword"]');
        tags.forEach(tag => {
            tag.addEventListener('click', () => {
                input.value = tag.textContent;
                input.focus();
            });
        });
    });
</script>

</body>

</html>