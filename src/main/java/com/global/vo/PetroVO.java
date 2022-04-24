package com.global.vo;

import org.springframework.web.multipart.MultipartFile;

public class PetroVO {
	
	private int petro_idx;
	
	private String petro_title;
	private String petro_content;
	private String petro_regdate;
	
	private int petro_like;
	private int petro_hit;
	
	private String petro_img;
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
	
	

}
