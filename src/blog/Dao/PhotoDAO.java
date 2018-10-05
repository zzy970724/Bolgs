package blog.Dao;

import java.util.List;
import blog.Entity.Photo;

public interface PhotoDAO {
	public boolean addPhoto(Photo p);//添加
	public boolean dalPhoto(int pid);//删除
	public boolean update(Photo p);//修改
	public List findAllPhoto();//查询所有
	public List findPhotoBylike(String str);//模糊查询
}
