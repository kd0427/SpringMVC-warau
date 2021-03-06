package com.global.service;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletContext;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Lazy;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.global.dao.PetroDAO;
import com.global.vo.PageVO;
import com.global.vo.PetroVO;
import com.global.vo.UserVO;

@Service

public class PetroService {

	@Autowired
	private PetroDAO petroDAO;
	
	@Autowired
	private ServletContext servletContext;
	
	@Resource(name="loginUserVO")
	@Lazy
	private UserVO loginUserVO;
	
	@Value("${page.listcnt}")
	private int page_listcnt;
	
	@Value("${page.paginationcnt}")
	private int page_paginationcnt;
	
	//게시판 목록 가져오기ㅣ
	public List<PetroVO> getPetroList(int page) {
		
		int start = (page - 1) * page_listcnt; //page 번호가 1이면 1-1 -> 0
		RowBounds rowBounds = new RowBounds(start, page_listcnt); //0~10개
		return petroDAO.getPetroList(rowBounds);
		
		
	}
	
	//업로드 파일 저장 메소드
		private String saveUplaodFile(MultipartFile upload_file) { //파일 이름이 중복될 수 있어서 현재시간 붙여서
			String file_name = System.currentTimeMillis() + "_" + upload_file.getOriginalFilename();
			String path = servletContext.getRealPath("/resources/upload");
			System.out.println(path);
			
			try {

				upload_file.transferTo(new File(path + "/" + file_name)); //주입받은 업로드
			} catch(Exception e) {
				
				e.printStackTrace();
			}
			
			return file_name;
			
		}
	
		 
		//글쓰기 
		public void petroAddWrite(PetroVO petroWriteVO) {
		
		MultipartFile upload_file = petroWriteVO.getUpload_file(); //사용자가 요청한 파일
		
		if(upload_file.getSize() > 0) { //파일이 있으면
			String file_name = saveUplaodFile(upload_file); // 현재시간 + 파일이름 불러주는 메소드 호출
			petroWriteVO.setPetro_img(file_name); //(디비이름)img에도 업로드한 이미지의 이름을 
		}
		
		petroWriteVO.setPetro_writer(loginUserVO.getUser_id()); //작성자가 누군지 알려고 하는 거
		
		petroDAO.petroAddWrite(petroWriteVO);
	}

		
		//글 정보
		public PetroVO petroWriteInfo(int petro_idx) { 
			
			return petroDAO.petroWriteInfo(petro_idx);
		}
		
		
		//글 삭제
		public void petroWriteDelete(int petro_idx) {
			
			petroDAO.petroWriteDelete(petro_idx);
		}
		
		//글 수정
		public void petroModifyInfo(PetroVO petroModifyVO) {
			
			MultipartFile upload_file = petroModifyVO.getUpload_file();
			
			if(upload_file.getSize() > 0) { //파일이 있으면
				String file_name = saveUplaodFile(upload_file); // 현재시간 + 파일이름 불러주는 메소드 호출
				petroModifyVO.setPetro_img(file_name); //(디비이름)img에도 업로드한 이미지의 이름을 
			}
			
			petroDAO.petroModifyInfo(petroModifyVO);
		}
	
		
		//페이징
		
		public PageVO petroWriteCnt(int currentPage) {
			
			int content_cnt = petroDAO.petroWriteCnt();
			
			PageVO pageVO = new PageVO(content_cnt, currentPage, page_listcnt, page_paginationcnt);
			
			return pageVO;
		}
}
