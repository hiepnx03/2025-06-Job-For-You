<%@ page import="java.sql.*" %>

<%
    String url = "jdbc:mysql://localhost:3306/jobsdb?useUnicode=true&characterEncoding=UTF-8";
    String user = "root";
    String password = "";
    Connection conn = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(url, user, password);
        System.out.println("Kết nối thành công!");
    } catch (Exception e) {
        System.out.println("Lỗi kết nối: " + e.getMessage());
    } finally {
        try {
            if (conn != null) conn.close();
        } catch (SQLException e) {
            System.out.println("Lỗi đóng kết nối: " + e.getMessage());
        }
    }
%>

<body>
<jsp:include page="navbar.jsp"/>
</body>
