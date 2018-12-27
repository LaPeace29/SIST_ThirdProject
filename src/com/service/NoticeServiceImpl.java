package com.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.domain.Notice;
import com.persistance.NoticeDAO;

@Service("noticeService")
public class NoticeServiceImpl implements NoticeService {

	@Resource(name="noticeDAO")
	private NoticeDAO noticeDAO;
	
	@Override
	public List<Notice> notice() {
		// TODO Auto-generated method stub
		return null;
	}

}
