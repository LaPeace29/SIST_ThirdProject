package com.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.domain.Notice;

public class NoticeMapper implements RowMapper<Notice> {

	@Override
	public Notice mapRow(ResultSet rs, int count) throws SQLException {
		
		// 데이터베이스에서 읽어온 결과를
		// 미리 준비한 객체의 특정 변수와 연결
		Notice notice = new Notice();
		
		
		return notice;
	}

}
