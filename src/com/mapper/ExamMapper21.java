package com.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.domain.Exam;

public class ExamMapper21 implements RowMapper<Exam> {

	@Override
	public Exam mapRow(ResultSet rs, int count) throws SQLException {
		
		// �����ͺ��̽����� �о�� �����
		// �̸� �غ��� ��ü�� Ư�� ������ ����
		Exam exam = new Exam();
		

		
		exam.setSubject_name(rs.getString("subject_name"));
		exam.setSubjectbook_name(rs.getString("subjectbook_name"));
		exam.setInstructor_name(rs.getString("instructor_name"));
		exam.setExam_date(rs.getDate("exam_date"));
		exam.setAttendance_score(rs.getInt("attendance_score"));
		exam.setAttendance_point(rs.getInt("attendance_point"));
		exam.setWrite_score(rs.getInt("write_score"));
		exam.setWrite_point(rs.getInt("write_point"));
		exam.setSkill_score(rs.getInt("skill_score"));
		exam.setSkill_point(rs.getInt("skill_point"));
		exam.setExam_file(rs.getString("exam_file"));
		exam.setSubjectbook_isbn(rs.getString("subjectbook_isbn"));
		exam.setInstructor_photo_filepath(rs.getString("instructor_photo_filepath"));
		exam.setSubject_start_date(rs.getDate("subject_start_date"));
		exam.setSubject_end_date(rs.getDate("subject_end_date"));
		
		
		
		return exam;
	}

}
