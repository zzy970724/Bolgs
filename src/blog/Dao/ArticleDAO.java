package blog.Dao;

import java.util.List;

import blog.Entity.Article;

public interface ArticleDAO {
	public boolean addArticle(Article a);//���
	public boolean dalArticle(int aid);//ɾ��
	public boolean update(Article a);//�޸�
	public List findAllArticle();//��ѯ����
	public Article findArticleById(int aid);//��ID��ѯ
	public List findArticleBylike(String str);//ģ����ѯ
}
