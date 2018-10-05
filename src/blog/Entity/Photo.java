package blog.Entity;

import java.sql.Date;

public class Photo {
	// µÃÂ¿‡.
		private int pid;
		private String patitle;
		private String pphoto;
		private Date   ptime;
		public int getPid() {
			return pid;
		}
		public void setPid(int pid) {
			this.pid = pid;
		}
		public String getPatitle() {
			return patitle;
		}
		public void setPatitle(String patitle) {
			this.patitle = patitle;
		}
		public String getPphoto() {
			return pphoto;
		}
		public void setPphoto(String pphoto) {
			this.pphoto = pphoto;
		}
		public Date getPtime() {
			return ptime;
		}
		public void setPtime(Date ptime) {
			this.ptime = ptime;
		}
		@Override
		public String toString() {
			return "Photo [pid=" + pid + ", patitle=" + patitle + ", pphoto="
					+ pphoto + ", ptime=" + ptime + "]";
		}
		
		
}
