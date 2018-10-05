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







import blog.Dao.PhotoDAO;
import blog.DaoImpl.PhotoDAOImpl;
import blog.Entity.Photo;


public class PhotoServlet extends HttpServlet {

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		//创建DAO   
		PhotoDAO pd=new PhotoDAOImpl();
		//创建Article实体类
		Photo     p=new Photo();
		String str=request.getParameter("flag");
		HttpSession session=request.getSession();
		String pid =request.getParameter("pid");
		
		//添加
				if(str.equals("add")){
					
					String patitle=request.getParameter("patitle");
					String pphoto=request.getParameter("pphoto");
					String ptime=request.getParameter("ptime");
				
					System.out.println(patitle);
					System.out.println(pphoto);
					System.out.println(ptime);
					
					p.setPatitle(patitle);
					p.setPphoto(pphoto);
					p.setPtime(Date.valueOf(ptime));
					
					boolean bol	=pd.addPhoto(p);
					//查询
					List alist=pd.findAllPhoto();
					session.setAttribute("pd", alist);
					
				
					session.setAttribute("keypatitle", patitle);
					session.setAttribute("keypphoto", pphoto);
					session.setAttribute("keyptime", ptime);
					
				}
				//查询
				if(str.equals("select")){
					List alist1=pd.findAllPhoto();
					session.setAttribute("pd", alist1);			
							
				}
				//删除 	 	
				
				if(str.equals("dal")){
					
					boolean bo=pd.dalPhoto(Integer.valueOf(pid));
					System.out.println(p);
					//查询
					List alist=pd.findAllPhoto();
					session.setAttribute("pd", alist);
				}
				//模糊查询
				if(str.equals("findPhotoBylike")){
					
					 List alist=pd.findPhotoBylike("ptitle");
					session.setAttribute("alist", pd);
					
				}
				//查询
				List alist=pd.findAllPhoto();
				session.setAttribute("pd", alist);
				request.getRequestDispatcher("photo.jsp").forward(request, response);
				
	}

	
	public void init() throws ServletException {
		// Put your code here
	}

}
