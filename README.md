# 2025-06-Job-For-You
# JobForYou

**JobForYou** là một ứng dụng web hỗ trợ tìm kiếm việc làm, kết nối người tìm việc và nhà tuyển dụng. Dự án được xây dựng bằng Java và sử dụng các công nghệ hiện đại để đảm bảo hiệu suất và khả năng mở rộng.

## Mục lục
- [Công nghệ sử dụng](#công-nghệ-sử-dụng)
- [Cài đặt](#cài-đặt)
- [Cách sử dụng](#cách-sử-dụng)
- [Đóng góp](#đóng-góp)
- [Giấy phép](#giấy-phép)

## Công nghệ sử dụng

Dự án **JobForYou** sử dụng các công nghệ và thư viện sau:

- **Java 17**: Ngôn ngữ lập trình chính, sử dụng phiên bản 17 để tận dụng các tính năng mới nhất.
- **Maven**: Công cụ quản lý dự án và xây dựng, đảm bảo quản lý phụ thuộc và quy trình build dễ dàng.
- **Spring Boot**: Framework để xây dựng ứng dụng web nhanh chóng, tích hợp Spring Boot DevTools để hỗ trợ phát triển.
- **Hibernate**: ORM (Object-Relational Mapping) để quản lý cơ sở dữ liệu, sử dụng phiên bản 5.6.15.Final.
- **MySQL**: Hệ quản trị cơ sở dữ liệu để lưu trữ thông tin người dùng, việc làm, và các dữ liệu khác.
- **Lombok**: Thư viện giúp giảm mã boilerplate (ví dụ: getter, setter) thông qua annotation.
- **Jakarta Servlet API**: Xử lý các yêu cầu HTTP trong ứng dụng web, phiên bản 6.1.0.
- **JUnit 5**: Framework kiểm thử để viết và chạy unit test, đảm bảo chất lượng mã.
- **JPA (Java Persistence API)**: Tiêu chuẩn để làm việc với cơ sở dữ liệu quan hệ.

## Cài đặt

Để chạy dự án trên máy local, bạn có thể sử dụng Spring Boot tích hợp hoặc triển khai trên Apache Tomcat 10.1.42. Làm theo các bước sau:

### Yêu cầu
- JDK 17
- Maven 3.6+
- MySQL 8.0+
- Apache Tomcat 10.1.42 (cho triển khai WAR)
- IDE (IntelliJ IDEA, Eclipse, hoặc VS Code)

### Cấu hình và chạy với Spring Boot

1. **Clone repository**:
   ```bash
   git clone https://github.com/hiepnx03/2025-06-Job-For-You
   cd JobForYou
   ```

2. **Cấu hình cơ sở dữ liệu**:
   - Tạo một database MySQL:
     ```sql
     CREATE DATABASE jobsdb;
     ```
   - Cập nhật thông tin kết nối database trong file `application.properties` hoặc `application.yml`:
     ```properties
     spring.datasource.url=jdbc:mysql://localhost:3306/jobsdb
     spring.datasource.username=root
     spring.datasource.password=<mật-khẩu>
     ```

3. **Cài đặt phụ thuộc**:
   ```bash
   mvn clean install
   ```

4. **Chạy ứng dụng**:
   ```bash
   mvn spring-boot:run
   ```

Ứng dụng sẽ chạy tại `http://localhost:8080`.

### Triển khai trên Apache Tomcat 10.1.42

1. **Tải và cài đặt Tomcat**:
   - Tải Apache Tomcat 10.1.42 từ [trang chính thức](https://tomcat.apache.org/download-10.cgi).
   - Giải nén file tải về vào thư mục mong muốn (ví dụ: `/path/to/tomcat`).
   - Đảm bảo biến môi trường `JAVA_HOME` được thiết lập trỏ đến JDK 17.

2. **Build WAR file**:
   - Từ thư mục dự án, chạy:
     ```bash
     mvn clean package
     ```
   - File WAR sẽ được tạo tại `target/JobForYou-1.0-SNAPSHOT.war`.

3. **Triển khai WAR file**:
   - Sao chép file `target/JobForYou-1.0-SNAPSHOT.war` vào thư mục `webapps` của Tomcat (ví dụ: `/path/to/tomcat/webapps`).
   - Hoặc, sử dụng giao diện quản trị Tomcat (`http://localhost:8080/admin`) để tải lên và triển khai file WAR.

4. **Cấu hình cơ sở dữ liệu**:
   - Đảm bảo file `application.properties` hoặc `application.yml` được cấu hình đúng như ở trên.
   - Nếu cần, đặt file cấu hình vào thư mục Tomcat hoặc đóng gói trong WAR.

5. **Khởi động Tomcat**:
   - Chạy lệnh:
     ```bash
     /path/to/tomcat/bin/startup.sh
     ```
     (Hoặc `startup.bat` trên Windows).
   - Ứng dụng sẽ доступ tại `http://localhost:8080/JobForYou-1.0-SNAPSHOT`.

## Cách sử dụng

- Truy cập ứng dụng qua trình duyệt tại `http://localhost:8080` (Spring Boot) hoặc `http://localhost:8080/JobForYou-1.0-SNAPSHOT` (Tomcat).
- Đăng ký tài khoản hoặc đăng nhập để tìm kiếm việc làm hoặc đăng tin tuyển dụng.
- Sử dụng giao diện quản trị (nếu có) để quản lý người dùng và bài đăng.

## Đóng góp

Chúng tôi hoan nghênh mọi đóng góp! Để tham gia:

1. Fork repository này.
2. Tạo branch mới: `git checkout -b ten-branch`.
3. Thực hiện thay đổi và commit: `git commit -m 'Mô tả thay đổi'`.
4. Push lên branch: `git push origin ten-branch`.
5. Tạo Pull Request trên repository chính.

## Giấy phép

Dự án được phân phối theo giấy phép MIT. Xem chi tiết trong file [LICENSE](LICENSE).