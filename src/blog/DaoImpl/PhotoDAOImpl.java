package blog.DaoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import blog.Dao.PhotoDAO;
import blog.Entity.Photo;
import blog.Utils.MysqlDB;

public class PhotoDAOImpl implements PhotoDAO  {
	Connection conn=MysqlDB.getconn();
	ResultSet rs=null;
	//添加
		@Override
		public boolean addPhoto(Photo p) {
			boolean flag=false;
			String sql="insert into b_p(patitle,pphoto,ptime)values(?,?,?)";
			try {
				PreparedStatement pstmt=conn.prepareStatement(sql);
				pstmt.setString(1,p.getPatitle());
				pstmt.setString(2,p.getPphoto());
				pstmt.setDate(3, p.getPtime());
				pstmt.execute();
				flag=true;
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
			return flag;
		}
	@Override
	public boolean update(Photo p) {
		// TODO Auto-generated method stub
		return false;
	}
	//删除
		@Override
		public boolean dalPhoto(int pid) {
			boolean flag=false;
			String sql="delete from b_p where pid=?";
			try {
				PreparedStatement pstmt=conn.prepareStatement(sql);
				pstmt.setInt(1, pid);
				pstmt.execute();
				flag=true;
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
			return flag;
		}
	//查询所有
		@Override
		public List findAllPhoto() {
			List list=new ArrayList();
			String sql="select * from b_p";
			try {
				PreparedStatement pstmt=conn.prepareStatement(sql);
				ResultSet rs= pstmt.executeQuery();
				while(rs.next()){
					Photo photo =new Photo();
					photo.setPid(rs.getInt("pid"));
					photo.setPatitle(rs.getString("patitle"));
					photo.setPphoto(rs.getString("pphoto"));
					photo.setPtime(rs.getDate("ptime"));
					list.add(photo);
				}
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
			return list;
		}
	@Override
	public List findPhotoBylike(String str) {
		// TODO Auto-generated method stub
		return null;
	}

	
}
