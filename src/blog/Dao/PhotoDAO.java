package blog.Dao;

import java.util.List;
import blog.Entity.Photo;

public interface PhotoDAO {
	public boolean addPhoto(Photo p);//���
	public boolean dalPhoto(int pid);//ɾ��
	public boolean update(Photo p);//�޸�
	public List findAllPhoto();//��ѯ����
	public List findPhotoBylike(String str);//ģ����ѯ
}
