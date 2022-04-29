package com.global.service;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.global.dao.ShareDAO;
import com.global.vo.ShareVO;
import com.global.vo.UserVO;

@Service
public class ShareService {
	
	@Autowired
	private ShareDAO shareDAO;
	
	@Resource(name="loginUserVO")
	@Lazy
	private UserVO loginUserVO;
	
	//리스트가져오기
	public List<ShareVO> getList(){
		return shareDAO.getList();
	}
	
	//글쓰기
	private String saveUploadFile(MultipartFile upload_file,HttpServletRequest request) {
		String root_path = request.getSession().getServletContext().getRealPath("/");  
	    String attach_path = "resources/upload/";
		String file_name = System.currentTimeMillis() + "_" + upload_file.getOriginalFilename();
		//사용자가 보낸 파일 이름앞에 현재시간을 달아준다.
		
		try {
			upload_file.transferTo(new File(root_path+attach_path+file_name));
			
			System.out.println(root_path+attach_path);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
		return file_name;
	}
	
	public void addContentInfo(ShareVO writeShareVO,HttpServletRequest request) {
		
		MultipartFile upload_file = writeShareVO.getUpload_img(); // 사용자가 요청한 파일
		
		if(upload_file.getSize()>0) { //파일이 있으면
			String file_name = saveUploadFile(upload_file,request); // 파일 이름앞에 현재시간 달아주는 메소드 호출
			
			writeShareVO.setShare_img(file_name);
		}
		
		writeShareVO.setShare_writer(loginUserVO.getUser_id()); // 작성자번호를 현재로그인한 사람의 아이디번호로 세팅
		
		shareDAO.write(writeShareVO);
		
	}
	
	///글읽기
	public ShareVO getContentInfo(int share_idx) {
		return shareDAO.getContentInfo(share_idx);
	}

	
}


