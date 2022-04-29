package com.global.vo;

import java.sql.Date;

public class NoticeVO {
	private int notice_idx;
	private String notice_title;
	private String notice_content;
	private String notice_writer;
	private Date notice_regdate;	
	private int notice_hit;
	
	public int getNotice_idx() {
		return notice_idx;
	}
	public void setNotice_idx(int notice_idx) {
		this.notice_idx = notice_idx;
	}
	public String getNotice_title() {
		return notice_title;
	}
	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}
	public String getNotice_content() {
		return notice_content;
	}
	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}
	public String getNotice_writer() {
		return notice_writer;
	}
	public void setNotice_writer(String notice_writer) {
		this.notice_writer = notice_writer;
	}
	public Date getNotice_regdate() {
		return notice_regdate;
	}
	public void setNotice_regdate(Date notice_regdate) {
		this.notice_regdate = notice_regdate;
	}
	public int getNotice_hit() {
		return notice_hit;
	}
	public void setNotice_hit(int notice_hit) {
		this.notice_hit = notice_hit;
	}
	
	@Override
	public String toString() {
		return "NoticeVO [notice_idx=" + notice_idx + ", notice_title=" + notice_title + ", notice_content="
				+ notice_content + ", notice_writer=" + notice_writer + ", notice_regdate=" + notice_regdate
				+ ", notice_hit=" + notice_hit + "]";
	}
	
}
