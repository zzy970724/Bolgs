package blog.Entity;

import java.sql.Date;

public class Article {
	//ʵ����.
		private int aid;//����ID
		private String atitle;//���±���
		private String acontent;//��������
		private String aphoto;//������Ƭ
		private String atype;//��������
		private Date atime;//����ʱ��
		public int getAid() {
			return aid;
		}
		public void setAid(int aid) {
			this.aid = aid;
		}
		public String getAtitle() {
			return atitle;
		}
		public void setAtitle(String atitle) {
			this.atitle = atitle;
		}
		public String getAcontent() {
			return acontent;
		}
		public void setAcontent(String acontent) {
			this.acontent = acontent;
		}
		public String getAphoto() {
			return aphoto;
		}
		public void setAphoto(String aphoto) {
			this.aphoto = aphoto;
		}
		public String getAtype() {
			return atype;
		}
		public void setAtype(String atype) {
			this.atype = atype;
		}
		public Date getAtime() {
			return atime;
		}
		public void setAtime(Date atime) {
			this.atime = atime;
		}
		
		
}
