package blog.DaoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import blog.Dao.ArticleDAO;
import blog.Entity.Article;
import blog.Utils.MysqlDB;

public class ArticleDAOImpl implements ArticleDAO {

	Connection conn=MysqlDB.getconn();
	ResultSet rs=null;
	
	//添加
	@Override
	public boolean addArticle(Article a) {
		boolean flag=false;
		String sql="insert into b_a(atitle,acontent,aphoto,atype,atime)values(?,?,?,?,?)";
		try {
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,a.getAtitle());
			pstmt.setString(2,a.getAcontent());
			pstmt.setString(3,a.getAphoto());
			pstmt.setString(4,a.getAtype());
			pstmt.setDate(5, a.getAtime());
			pstmt.execute();
			flag=true;
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return flag;
	}
	//删除
	@Override
	public boolean dalArticle(int aid) {
		boolean flag=false;
		String sql="delete from b_a where aid=?";
		try {
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, aid);
			pstmt.execute();
			flag=true;
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return flag;
	}
	//修改
	@Override
	public boolean update(Article a) {
		boolean flag=false;
		String sql="update  b_a set atitle=?,acontent=?,aphoto=?,atype=?,atime=? where aid=?";
		try {
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, a.getAtitle());
			pstmt.setString(2, a.getAcontent());
			pstmt.setString(1, a.getAphoto());
			pstmt.setString(2, a.getAtype());
			pstmt.setDate(1, a.getAtime());
			pstmt.setInt(3, a.getAid());
			pstmt.execute();
			flag=true;
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return flag; 
	}
	//查询所有
	@Override
	public List findAllArticle() {
		List list=new ArrayList();
		String sql="select * from b_a";
		try {
			PreparedStatement pstmt=conn.prepareStatement(sql);
			ResultSet rs= pstmt.executeQuery();
			while(rs.next()){
				Article article =new Article();
				article.setAid(rs.getInt("aid"));
				article.setAtitle(rs.getString("atitle"));
				article.setAcontent(rs.getString("acontent"));
				article.setAphoto(rs.getString("aphoto"));
				article.setAtype(rs.getString("atype"));
				article.setAtime(rs.getDate("atime"));
				list.add(article);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return list;
	}
	//id查询
	@Override
	public Article findArticleById(int aid) {
		Article a =new Article();
		String sql="select * from b_a where aid=?";
		try {
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, aid);
			ResultSet rs =pstmt.executeQuery();
			if(rs.next()){
				a.setAid(rs.getInt(1));
				a.setAtitle(rs.getString(2));
				a.setAcontent(rs.getString(3));
				a.setAphoto(rs.getString(4));
				a.setAtype(rs.getString(5));
				a.setAtime(rs.getDate(6));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return a;
	}
	//模糊查询
	@Override
	public List findArticleBylike(String str) {
		List list=new ArrayList();
		String sql="select * from b_a where atitle like ?";
		try {
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, "%"+str+"%");
			ResultSet rs= pstmt.executeQuery();
			while(rs.next()){
				Article article =new Article();
				article.setAid(rs.getInt("aid"));
				article.setAtitle(rs.getString("atitle"));
				article.setAcontent(rs.getString("acontent"));
				article.setAphoto(rs.getString("aphoto"));
				article.setAtype(rs.getString("atype"));
				article.setAtime(rs.getDate("atime"));
				list.add(article);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return list;
	}
}
