package com.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.domain.OpenCourse;

public class OpenCourseMapper21 implements RowMapper<OpenCourse> {

	@Override
	public OpenCourse mapRow(ResultSet rs, int count) throws SQLException {
		
		// 데이터베이스에서 읽어온 결과를
		// 미리 준비한 객체의 특정 변수와 연결
		OpenCourse oc = new OpenCourse();
		/*open_course_id, course_name, open_course_start_date, open_course_end_date, classroom_name, student_name, completion, percent*/
		
		
		oc.setOpen_course_id(rs.getString("open_course_id"));
		oc.setCourse_name(rs.getString("course_name"));
		oc.setOpen_course_start_date(rs.getDate("open_course_start_date"));
		oc.setOpen_course_end_date(rs.getDate("open_course_end_date"));
		oc.setClassroom_name(rs.getString("classroom_name"));
		oc.setCompletion_status(rs.getString("completion_status"));
		oc.setPercent(rs.getInt("percent"));
		
		return oc;
	}
}