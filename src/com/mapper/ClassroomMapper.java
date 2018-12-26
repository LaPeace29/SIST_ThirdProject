package com.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.domain.Classroom;

public class ClassroomMapper implements RowMapper<Classroom> {

	@Override
	public Classroom mapRow(ResultSet rs, int count) throws SQLException {
		
		// 데이터베이스에서 읽어온 결과를
		// 미리 준비한 객체의 특정 변수와 연결
		Classroom cr = new Classroom();
		
		
		return cr;
	}

}
