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

import com.global.dao.AdoptDAO;
import com.global.vo.AdoptVO;
import com.global.vo.PageVO;
import com.global.vo.UserVO;

@Service
public class AdoptService {
	
	@Autowired
	private AdoptDAO adoptDAO;
	
	@Autowired
	ServletContext servletContext;
	
	@Value("${page.listcnt}")
	private int page_listcnt;
	
	@Value("${page.paginationcnt}")
	private int page_paginationcnt;
	
	@Resource(name="loginUserVO")
	@Lazy
	private UserVO loginUserVO;
	
	
	//리스트가져오기
	public List<AdoptVO> getList(int page){
		
		int start =(page-1)* page_listcnt;
		RowBounds rowbounds = new RowBounds(start, page_listcnt);
		return adoptDAO.getList(rowbounds);
	}
	
	//업로드 파일 저장 메소드
			private String saveUplaodFile(MultipartFile upload_file) { //파일 이름이 중복될 수 있어서 현재시간 붙여서
				String file_name = System.currentTimeMillis() + "_" + upload_file.getOriginalFilename();
				String path = servletContext.getRealPath("/resources/upload");
				
				try {

					upload_file.transferTo(new File(path + "/" + file_name)); //주입받은 업로드
				} catch(Exception e) {
					
					e.printStackTrace();
				}
				
				return file_name;
				
			}
		
			 
			//글쓰기 
			public void adoptAddWrite(AdoptVO writeAdoptVO) {
			
			MultipartFile upload_file = writeAdoptVO.getUpload_img(); //사용자가 요청한 파일
			
			if(upload_file.getSize() > 0) { //파일이 있으면
				String file_name = saveUplaodFile(upload_file); // 현재시간 + 파일이름 불러주는 메소드 호출
				writeAdoptVO.setAdopt_img(file_name); //(디비이름)img에도 업로드한 이미지의 이름을 
			}
			
			writeAdoptVO.setAdopt_writer(loginUserVO.getUser_id()); //작성자가 누군지 알려고 하는 거
			
			adoptDAO.write(writeAdoptVO);
		}
	
	///글읽기
	public AdoptVO getContentInfo(int adopt_idx) {
		return adoptDAO.getContentInfo(adopt_idx);
	}
	
	//글 삭제
			public void adoptWriteDelete(int adopt_idx) {
				
				adoptDAO.adoptWriteDelete(adopt_idx);
			}
			
			//글 수정
			public void adoptModifyInfo(AdoptVO adoptModifyVO) {
				
				MultipartFile upload_file = adoptModifyVO.getUpload_img();
				
				if(upload_file.getSize() > 0) { //파일이 있으면
					String file_name = saveUplaodFile(upload_file); // 현재시간 + 파일이름 불러주는 메소드 호출
					adoptModifyVO.setAdopt_img(file_name); //(디비이름)img에도 업로드한 이미지의 이름을 
				}
				
				adoptDAO.adoptModifyInfo(adoptModifyVO);
			}
			
			//페이징
			
			public PageVO adoptWriteCnt(int currentPage) {
				
				int content_cnt = adoptDAO.adoptWriteCnt();
				
				PageVO pageVO = new PageVO(content_cnt, currentPage, page_listcnt, page_paginationcnt);
				
				return pageVO;
			}
	
}
