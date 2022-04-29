package com.global.vo;

import org.springframework.web.multipart.MultipartFile;

public class InfoVO {
	private int info_idx;
	private String info_title;
	private String info_content;
	private String info_regdate;
	private int info_like;
	private int info_hit;
	private String info_img;
	private String info_writer;
	
	private MultipartFile upload_img;

	public int getInfo_idx() {
		return info_idx;
	}

	public void setInfo_idx(int info_idx) {
		this.info_idx = info_idx;
	}

	public String getInfo_title() {
		return info_title;
	}

	public void setInfo_title(String info_title) {
		this.info_title = info_title;
	}

	public String getInfo_content() {
		return info_content;
	}

	public void setInfo_content(String info_content) {
		this.info_content = info_content;
	}

	public String getInfo_regdate() {
		return info_regdate;
	}

	public void setInfo_regdate(String info_regdate) {
		this.info_regdate = info_regdate;
	}

	public int getInfo_like() {
		return info_like;
	}

	public void setInfo_like(int info_like) {
		this.info_like = info_like;
	}

	public int getInfo_hit() {
		return info_hit;
	}

	public void setInfo_hit(int info_hit) {
		this.info_hit = info_hit;
	}

	public String getInfo_img() {
		return info_img;
	}

	public void setInfo_img(String info_img) {
		this.info_img = info_img;
	}

	public String getInfo_writer() {
		return info_writer;
	}

	public void setInfo_writer(String info_writer) {
		this.info_writer = info_writer;
	}

	public MultipartFile getUpload_img() {
		return upload_img;
	}

	public void setUpload_img(MultipartFile upload_img) {
		this.upload_img = upload_img;
	}
	
	
}
