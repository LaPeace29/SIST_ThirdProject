package com.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.domain.Subjectbook;
import com.persistance.SubjectbookDAO;

@Service("subjectbookService")
public class SubjectbookServiceImpl implements SubjectbookService {

	@Resource(name="subjectbookDAO")
	private SubjectbookDAO subjectbookDAO;
	
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
