package org.example.jobforyou.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import javax.persistence.*;
import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "jobs")
public class Job {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(name = "title")
    private String title;         // Vị trí
    @Column(name = "company")
    private String company;       // Công ty
    @Column(name = "location")
    private String location;      // Địa điểm
    @Column(name = "salary")
    private String salary;        // Mức lương
    @Column(name = "description")
    private String description;   // Mô tả công việc
    @Column(name = "requirement")
    private String requirement;   // Yêu cầu
    @Column(name = "posted_date")
    private Date postedDate;      // Ngày đăng tuyển
    @Column(name = "deadline")
    private Date deadline;        // Hạn nộp hồ sơ
    @Column(name = "address")
    private String address;       // Địa điểm làm việc cụ thể
    @Column(name = "working_time")
    private String workingTime;   // Thời gian làm việc
    @Column(name = "job_type")
    private String job_type;       // Loại hình công việc
}

