package com.persistance;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.domain.Subjectbook;

@Repository("subjectbookDAO")
public class SubjectbookDAOImpl implements SubjectbookDAO{

	@Resource(name="jdbcTemplate")
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public int insert(Subjectbook sb) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Subjectbook> print1() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int update(Subjectbook sb) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(Subjectbook sb) {
		// TODO Auto-generated method stub
		return 0;
	}
}
