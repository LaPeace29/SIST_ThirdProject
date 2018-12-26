package com.persistance;

import java.util.List;

import com.domain.OpenSubject;

public interface OpenSubjectDAO {

	// 개설 과목 출력 메소드(1)
	// 개설 과목번호 / 과목명 / 개설 과목 기간 / 강사명 / 교재명
	public List<OpenSubject> prints1();
	
	
}
