package com.persistance;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.domain.Notice;

@Repository("noticeDAO")
public class NoticeDAOImpl implements NoticeDAO{

	@Resource(name="jdbcTemplate")
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public List<Notice> notice() {
		// TODO Auto-generated method stub
		return null;
	}
}
