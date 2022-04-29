package com.global.service;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.global.dao.AdoptDAO;
import com.global.vo.AdoptVO;
import com.global.vo.UserVO;

@Service
public class AdoptService {
	
	@Autowired
	private AdoptDAO adoptDAO;
	
	@Resource(name="loginUserVO")
	@Lazy
	private UserVO loginUserVO;
	
	//리스트가져오기
	public List<AdoptVO> getList(){
		return adoptDAO.getList();
	}
	
	//글쓰기
	private String saveUploadFile(MultipartFile upload_file,HttpServletRequest request) {
		String root_path = request.getSession().getServletContext().getRealPath("/resources/upload/");  
		String file_name = System.currentTimeMillis() + "_" + upload_file.getOriginalFilename();
		//사용자가 보낸 파일 이름앞에 현재시간을 달아준다.
		
		File uploadImg = new File(root_path, file_name);
		if(!uploadImg.exists()) { uploadImg.mkdirs(); }


		
		try {
			upload_file.transferTo(uploadImg);
			
			System.out.println(root_path+file_name);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
		return file_name;
	}
	
	public void addContentInfo(AdoptVO writeAdoptVO,HttpServletRequest request) {
		
		MultipartFile upload_file = writeAdoptVO.getUpload_img(); // 사용자가 요청한 파일
		
		if(upload_file.getSize()>0) { //파일이 있으면
			String file_name = saveUploadFile(upload_file,request); // 파일 이름앞에 현재시간 달아주는 메소드 호출
			
			writeAdoptVO.setAdopt_img(file_name);
		}
		
		writeAdoptVO.setAdopt_writer(loginUserVO.getUser_id()); // 작성자번호를 현재로그인한 사람의 아이디번호로 세팅
		
		adoptDAO.write(writeAdoptVO);;
		
	}
	
	///글읽기
	public AdoptVO getContentInfo(int adopt_idx) {
		return adoptDAO.getContentInfo(adopt_idx);
	}

	
}
