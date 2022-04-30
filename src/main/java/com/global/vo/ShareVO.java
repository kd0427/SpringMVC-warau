package com.global.vo;


	import javax.validation.constraints.NotBlank;

import org.springframework.web.multipart.MultipartFile;

	public class ShareVO {
		
		
		private int share_idx;
		
		@NotBlank
		private String share_title;
		
		@NotBlank
		private String share_content;
		
		
		private String share_regdate;
		private int share_like;
		private int share_hit;
		private String share_img;
		private String share_writer;
		
		private MultipartFile upload_img;

		public int getShare_idx() {
			return share_idx;
		}

		public void setShare_idx(int share_idx) {
			this.share_idx = share_idx;
		}

		public String getShare_title() {
			return share_title;
		}

		public void setShare_title(String share_title) {
			this.share_title = share_title;
		}

		public String getShare_content() {
			return share_content;
		}

		public void setShare_content(String share_content) {
			this.share_content = share_content;
		}

		public String getShare_regdate() {
			return share_regdate;
		}

		public void setShare_regdate(String share_regdate) {
			this.share_regdate = share_regdate;
		}

		public int getShare_like() {
			return share_like;
		}

		public void setShare_like(int share_like) {
			this.share_like = share_like;
		}

		public int getShare_hit() {
			return share_hit;
		}

		public void setShare_hit(int share_hit) {
			this.share_hit = share_hit;
		}

		public String getShare_img() {
			return share_img;
		}

		public void setShare_img(String share_img) {
			this.share_img = share_img;
		}

		public String getShare_writer() {
			return share_writer;
		}

		public void setShare_writer(String share_writer) {
			this.share_writer = share_writer;
		}

		public MultipartFile getUpload_img() {
			return upload_img;
		}

		public void setUpload_img(MultipartFile upload_img) {
			this.upload_img = upload_img;
		}

	
	}
