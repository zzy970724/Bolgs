package blog.Entity;

import java.sql.Date;

public class Article {
	//实体类.
		private int aid;//文章ID
		private String atitle;//文章标题
		private String acontent;//文章内容
		private String aphoto;//文章照片
		private String atype;//文章类型
		private Date atime;//发表时间
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
