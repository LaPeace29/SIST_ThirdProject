package com.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.domain.Student;

public class StudentMapper21 implements RowMapper<Student> {

	@Override
	public Student mapRow(ResultSet rs, int count) throws SQLException {
		
		// TODO Auto-generated method stub
		Student st = new Student();
		st.setStudent_id(rs.getString("student_id"));
		
		return st;
	}
	
}