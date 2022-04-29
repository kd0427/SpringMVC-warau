package com.global.vo;


public class QnaVO {

		private int qna_idx;
		private String qna_q;
		private String qna_a;
		
		public int getQna_idx() {
			return qna_idx;
		}
		public void setQna_idx(int qna_idx) {
			this.qna_idx = qna_idx;
		}
		public String getQna_q() {
			return qna_q;
		}
		public void setQna_q(String qna_q) {
			this.qna_q = qna_q;
		}
		public String getQna_a() {
			return qna_a;
		}
		public void setQna_a(String qna_a) {
			this.qna_a = qna_a;
		}
		
		@Override
		public String toString() {
			return "QnaDAO [qna_idx=" + qna_idx + ", qna_q=" + qna_q + ", qna_a=" + qna_a + "]";
		}
		
		

}
