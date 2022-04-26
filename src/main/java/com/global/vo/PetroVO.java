package com.global.vo;

import javax.validation.constraints.NotBlank;

import org.springframework.web.multipart.MultipartFile;

public class PetroVO {
	
	private int petro_idx;
	
	@NotBlank
	private String petro_title;
	
	@NotBlank
	private String petro_content;
	
	private String petro_regdate;
	
	private int petro_like;
	private int petro_hit;
	
	
	private String petro_img; // 테이블 컬럼 이름
	private MultipartFile upload_img; // 브라우저가 보낼 파일 데이터 를 멀티파트파일이라는 객체를 담기 위한 변수(클라이언트가 보낼) 
	
	private String petro_writer;
	
	
	public int getPetro_idx() {
		return petro_idx;
	}
	public void setPetro_idx(int petro_idx) {
		this.petro_idx = petro_idx;
	}
	public String getPetro_title() {
		return petro_title;
	}
	public void setPetro_title(String petro_title) {
		this.petro_title = petro_title;
	}
	public String getPetro_content() {
		return petro_content;
	}
	public void setPetro_content(String petro_content) {
		this.petro_content = petro_content;
	}
	public String getPetro_regdate() {
		return petro_regdate;
	}
	public void setPetro_regdate(String petro_regdate) {
		this.petro_regdate = petro_regdate;
	}
	public int getPetro_like() {
		return petro_like;
	}
	public void setPetro_like(int petro_like) {
		this.petro_like = petro_like;
	}
	public int getPetro_hit() {
		return petro_hit;
	}
	public void setPetro_hit(int petro_hit) {
		this.petro_hit = petro_hit;
	}
	public String getPetro_img() {
		return petro_img;
	}
	public void setPetro_img(String petro_img) {
		this.petro_img = petro_img;
	}
	public String getPetro_writer() {
		return petro_writer;
	}
	public void setPetro_writer(String petro_writer) {
		this.petro_writer = petro_writer;
	}
	public MultipartFile getUpload_img() {
		return upload_img;
	}
	public void setUpload_img(MultipartFile upload_img) {
		this.upload_img = upload_img;
	}
	
	
	

}
