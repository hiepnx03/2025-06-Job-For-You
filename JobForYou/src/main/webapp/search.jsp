<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="org.example.jobforyou.model.Job" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kết quả tìm kiếm</title>
    <link rel="stylesheet" href="css/search.css">
</head>

<body>
<jsp:include page="navbar.jsp"/>

<!-- Search Info -->
<div class="container mt-5">
    <div class="search-info">
        <h1>Kết quả tìm kiếm</h1>
        <p><strong>Từ khóa:</strong>
            <%= request.getAttribute("keyword") %>
        </p>
        <p><strong>Địa điểm:</strong>
            <%= request.getAttribute("location") %>
        </p>
    </div>

    <!-- Job List -->
    <% List<Job> jobs = (List<Job>) request.getAttribute("jobs");
        if (jobs != null && !jobs.isEmpty()) {
            SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
            for (Job job : jobs) {
    %>
    <div class="job-card card mb-3">
        <div class="card-body">
            <h5 class="card-title">
                <%= job.getTitle() %>
            </h5>
            <h6 class="card-subtitle mb-2 text-muted">
                <%= job.getCompany() %>
            </h6>
            <p class="card-text mb-1"><strong>Lương:</strong>
                <%= job.getSalary() %>
            </p>
            <p class="card-text mb-1"><small class="text-muted">Ngày đăng: <%=
            job.getPostedDate() != null ? sdf.format(job.getPostedDate()) : "N/A"
            %>
            </small></p>
            <p class="card-text mb-1"><small class="text-muted">Hạn nộp hồ sơ: <%=
            job.getDeadline() != null ? sdf.format(job.getDeadline()) : "N/A" %>
            </small></p>
            <a href="job-detail.jsp?id=<%= job.getId() %>" class="btn btn-primary mt-2">Xem
                chi tiết</a>
        </div>
    </div>
    <% }
    } else { %>
    <div class="alert alert-warning" role="alert">
        Không tìm thấy việc làm nào phù hợp với tiêu chí của bạn.
    </div>
    <% } %>
</div>

</body>

</html>