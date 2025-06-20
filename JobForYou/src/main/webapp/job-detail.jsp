<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <title>Chi tiết công việc</title>
    <link rel="stylesheet" href="css/job-detail.css">
</head>

<body>
<jsp:include page="navbar.jsp"/>

<div class="container">
    <h1>Chi tiết công việc</h1>
    <div class="job-info">
        <% String id = request.getParameter("id");
            if (id == null) id = "1";
            if ("1".equals(id)) { %>
        <p><span>Vị trí:</span> Lập trình viên Java</p>
        <p><span>Công ty:</span> Công ty ABC</p>
        <p><span>Địa điểm:</span> Hà Nội</p>
        <p><span>Mức lương:</span> 15,000,000 - 20,000,000 VNĐ</p>
        <p><span>Ngày đăng tuyển:</span> 15/04/2025</p>
        <p><span>Mô tả công việc:</span> Phát triển ứng dụng Java, duy trì hệ thống hiện tại, làm việc nhóm
            Agile.</p>
        <p><span>Yêu cầu:</span> Có kinh nghiệm ít nhất 1 năm với Java. Ưu tiên biết sử dụng Spring
            Framework.</p>
        <p><span>Hạn nộp hồ sơ:</span> 30/04/2025</p>
        <p><span>Địa điểm làm việc:</span> 68 Nguyễn Chí Thanh</p>
        <p><span>Thời gian làm việc:</span>Thứ 2 - Thứ 6 (từ 08:30 đến 17:30)</p>
        <% } else if ("2".equals(id)) { %>
        <p><span>Vị trí:</span> Chuyên viên Marketing</p>
        <p><span>Công ty:</span> Công ty XYZ</p>
        <p><span>Địa điểm:</span> TP.Hồ Chí Minh</p>
        <p><span>Mức lương:</span> 10,000,000 - 18,000,000 VNĐ</p>
        <p><span>Ngày đăng tuyển:</span> 12/04/2025</p>
        <p><span>Mô tả công việc:</span> Lên kế hoạch marketing, chạy quảng cáo, phân tích chiến dịch.
        </p>
        <p><span>Yêu cầu:</span> Không yêu cầu kinh nghiệm</p>
        <p><span>Hạn nộp hồ sơ:</span> 05/05/2025</p>
        <p><span>Địa điểm làm việc:</span>25 Đường Lê Duẩn</p>
        <p><span>Thời gian làm việc:</span>Thứ 2 - Thứ 6 (từ 08:30 đến 17:30)</p>
        <p>Thứ 7 (từ 08:30 đến 12:00)</p>

        <% } else if ("3".equals(id)) { %>
        <p><span>Vị trí:</span> Kỹ sư xây dựng</p>
        <p><span>Công ty:</span> Công ty Delta</p>
        <p><span>Địa điểm:</span> Đà Nẵng</p>
        <p><span>Mức lương:</span> 12,000,000 - 22,000,000 VNĐ</p>
        <p><span>Ngày đăng tuyển:</span> 10/04/2025</p>
        <p><span>Mô tả công việc:</span> Giám sát công trình, lập kế hoạch thi công, quản lý nhân sự
            thi công.</p>
        <p><span>Yêu cầu:</span>- Độ tuổi dưới 30.
            - Có kinh nghiệm về đọc bản vẽ về kĩ thuật xây dựng,
            - Thành thạo AutoCAD và Excel
            - Có kiến thức về các tiêu chuẩn, quy chuẩn xây dựng hiện hành.</p>
        <p><span>Hạn nộp hồ sơ:</span> 25/04/2025</p>
        <span>Địa điểm làm việc:</span>68 Nguyễn Chí Thanh</p>
        <p><span>Thời gian làm việc:</span>Thứ 2 - Thứ 6 (từ 08:30 đến 17:30)</p>
        <% } else if ("4".equals(id)) { %>
        <p><span>Vị trí:</span> Nhân viên thiết kế đồ hoạ</p>
        <p><span>Công ty:</span> Công ty cổ phần thương mại và đầu tư Gia Vũ</p>
        <p><span>Địa điểm:</span> Đà Nẵng</p>
        <p><span>Mức lương:</span> 18,000,000 - 25,000,000 VNĐ</p>
        <p><span>Ngày đăng tuyển:</span> 25/04/2025</p>
        <p><span>Mô tả công việc:</span> Thiết kế ladipage, các ấn phẩm quảng cáo, bao bì, sản
            phầm, banner,poster. Đảm bảo chất lượng thiết kế màu sắc, bố cục...</p>
        <p><span>Yêu cầu:</span> Có ít nhất 6 tháng kinh nghiệm trở lên ở vị trí Đồ hoạ, ưu tiên
            từng làm TMĐT, FMCG, Retail</p>
        <p><span>Hạn nộp hồ sơ:</span> 05/05/2025</p>
        <p><span>Địa điểm làm việc:</span>68 Nguyễn Chí Thanh</p>
        <p><span>Thời gian làm việc:</span>Thứ 2 - Thứ 6 (từ 08:30 đến 17:30)</p>

        <% } else if ("5".equals(id)) { %>
        <p><span>Vị trí:</span>Test Inter</p>
        <p><span>Công ty:</span> Công ty cổ phần công nghệ tài chính GOLINE</p>
        <p><span>Địa điểm:</span> Hà Nội</p>
        <p><span>Mức lương:</span> Thoả thuận</p>
        <p><span>Ngày đăng tuyển:</span> 29/04/2025</p>
        <p><span>Mô tả công việc:</span>Thực hiện test theo testcase & tổng hợp kết quả
            test. Thực hiện kiểm tra lỗi, log lỗi,và theo dõi tiến độ fix bug. </p>
        <p><span>Yêu cầu:</span> Không yêu cầu kinh nghiệm</p>
        <p><span>Hạn nộp hồ sơ:</span> 05/05/2025</p>
        <p><span>Địa điểm làm việc:</span>Toà nhà 319 Lê Văn Lương</p>
        <p><span>Thời gian làm việc:</span>Thứ 2 - Thứ 6 (từ 08:30 đến 17:30)</p>
        <% } %>


    </div>

    <a href="${pageContext.request.contextPath}/index" class="btn btn-back mt-4">← Quay lại trang chủ</a>
</div>

</body>

</html>