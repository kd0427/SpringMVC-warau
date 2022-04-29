package com.global.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.global.dao.QnaDAO;
import com.global.vo.QnaVO;

@Service
public class QnaService {
	
	@Autowired
	private QnaDAO qnaDAO;
	
	public List<QnaVO> getQnaList(){
		return qnaDAO.getQnaList();
	}

}
