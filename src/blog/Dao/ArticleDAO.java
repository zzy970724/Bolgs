package blog.Dao;

import java.util.List;

import blog.Entity.Article;

public interface ArticleDAO {
	public boolean addArticle(Article a);//添加
	public boolean dalArticle(int aid);//删除
	public boolean update(Article a);//修改
	public List findAllArticle();//查询所有
	public Article findArticleById(int aid);//按ID查询
	public List findArticleBylike(String str);//模糊查询
}
