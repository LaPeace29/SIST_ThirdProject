package com.persistance;

import java.util.List;

import com.domain.Admin;

public interface AdminDAO {

	// (출력) 강사 - 개인 설정 - 개인정보 확인
	public List<Admin> info();
		
	// (수정) 관리자 - 개인 설정 - 비밀번호 변경
	public int changepw(Admin admin);
}
