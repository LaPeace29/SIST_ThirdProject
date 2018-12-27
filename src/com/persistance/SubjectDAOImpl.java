package com.persistance;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.domain.Subject;

@Repository("subjectDAO")
public class SubjectDAOImpl implements SubjectDAO{

	@Resource(name="jdbcTemplate")
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public int insert(Subject sub) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Subject> print1() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int update(Subject sub) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(Subject sub) {
		// TODO Auto-generated method stub
		return 0;
	}
}
