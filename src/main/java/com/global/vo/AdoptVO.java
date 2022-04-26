package com.global.vo;

import org.springframework.web.multipart.MultipartFile;

public class AdoptVO {
	private int adopt_idx;
	private String adopt_title;
	private String adopt_content;
	private String adopt_regdate;
	private int adopt_like;
	private int adopt_hit;
	private String adopt_img;
	private String adopt_writer;
	
	//저장되는 파일
	private MultipartFile upload_img;

	public int getAdopt_idx() {
		return adopt_idx;
	}

	public void setAdopt_idx(int adopt_idx) {
		this.adopt_idx = adopt_idx;
	}

	public String getAdopt_title() {
		return adopt_title;
	}

	public void setAdopt_title(String adopt_title) {
		this.adopt_title = adopt_title;
	}

	public String getAdopt_content() {
		return adopt_content;
	}

	public void setAdopt_content(String adopt_content) {
		this.adopt_content = adopt_content;
	}

	public String getAdopt_regdate() {
		return adopt_regdate;
	}

	public void setAdopt_regdate(String adopt_regdate) {
		this.adopt_regdate = adopt_regdate;
	}

	public int getAdopt_like() {
		return adopt_like;
	}

	public void setAdopt_like(int adopt_like) {
		this.adopt_like = adopt_like;
	}

	public int getAdopt_hit() {
		return adopt_hit;
	}

	public void setAdopt_hit(int adopt_hit) {
		this.adopt_hit = adopt_hit;
	}

	public String getAdopt_img() {
		return adopt_img;
	}

	public void setAdopt_img(String adopt_img) {
		this.adopt_img = adopt_img;
	}

	public String getAdopt_writer() {
		return adopt_writer;
	}

	public void setAdopt_writer(String adopt_writer) {
		this.adopt_writer = adopt_writer;
	}

	public MultipartFile getUpload_img() {
		return upload_img;
	}

	public void setUpload_img(MultipartFile upload_img) {
		this.upload_img = upload_img;
	}
	
	
}
