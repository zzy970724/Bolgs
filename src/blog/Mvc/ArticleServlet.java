package blog.Mvc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import blog.Dao.ArticleDAO;
import blog.DaoImpl.ArticleDAOImpl;
import blog.Entity.Article;

public class ArticleServlet extends HttpServlet {

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); 
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
			request.setCharacterEncoding("UTF-8");

		//����DAO   
		ArticleDAO ad=new ArticleDAOImpl();
		//����Articleʵ����
		Article     a=new Article();
		String str=request.getParameter("flag");
		HttpSession session=request.getSession();
		
		String aid=request.getParameter("aid");

		 //���
		if(str.equals("add")){
			
			String atitle=request.getParameter("atitle");
			String acontent=request.getParameter("acontent");
			String aphoto=request.getParameter("aphoto");
			String atype=request.getParameter("atype");
			String atime=request.getParameter("atime");
		
			System.out.println(atitle);
			System.out.println(acontent);
			System.out.println(aphoto);
			System.out.println(atype);
			System.out.println(atime);
			
			a.setAtitle(atitle);
			a.setAcontent(acontent);
			a.setAphoto(aphoto);
			a.setAtype(atype);
			a.setAtime(Date.valueOf(atime));
			
			boolean bol	=ad.addArticle(a);
			//��ѯ
			List alist=ad.findAllArticle();
			session.setAttribute("ad", alist);
			
		
			session.setAttribute("keyatitle", atitle);
			session.setAttribute("keyacontent", acontent);
			session.setAttribute("keyaphoto", aphoto);
			session.setAttribute("keyatype", atype);
			session.setAttribute("keyatime", atime);
			
		}
		//��ѯ
		if(str.equals("select")){
			List alist1=ad.findAllArticle();
			session.setAttribute("ad", alist1);			
					
		}
		
		//ɾ�� 	 	
		
			if(str.equals("dal")){
				
				boolean bo=ad.dalArticle(Integer.valueOf(aid));
				System.out.println(a);
				//��ѯ
				List alist=ad.findAllArticle();
				session.setAttribute("ad", alist);
				
			}
			
			
			
			//�޸� 	 	
					if(str.equals("upd")){
					
						String atitle=request.getParameter("atitle");
						String acontent=request.getParameter("acontent");
						String aphoto=request.getParameter("aphoto");
						String atype=request.getParameter("atype");
						String atime=request.getParameter("atime");
						
						a.setAtitle(atitle);
						a.setAcontent(acontent);
						a.setAphoto(aphoto);
						a.setAtype(atype);
						a.setAtime(Date.valueOf(atime));
						
						boolean bo=ad.update(a);
						System.out.println(a);


					}
					
			//ID��ѯ
				if(str.equals("findArticleById")){
					
					Article alist=ad.findArticleById(Integer.valueOf("aid"));
					session.setAttribute("ad", alist);
					
				}
				
			//ģ����ѯ
				if(str.equals("findArticleBylike")){
					
					 List alist=ad.findArticleBylike("atitle");
					session.setAttribute("alist", ad);
					
				}
				
				request.getRequestDispatcher("hyl.jsp").forward(request, response);
		
		}
		

	public void init() throws ServletException {
		// Put your code here
	}

}
