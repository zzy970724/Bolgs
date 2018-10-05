package blog.Mvc;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import blog.Dao.UserDAO;
import blog.DaoImpl.UserDAOImpl;
import blog.Entity.User;
import blog.Utils.MysqlDB;
import blog.service.UserBiz;

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UserServlet() {
		super();

	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		String username = request.getParameter("username").trim();
		String password = request.getParameter("password").trim();
		String flag = request.getParameter("flag");
		if ("login".equals(flag)) {
			// ��½
			System.out.println(username);
			System.out.println(password);
			HttpSession session1 = request.getSession();

			MysqlDB db = new MysqlDB();
			ResultSet rs = db.getResult(
					"select * from b_u where username=? and password=?;",
					new String[] { username, password });
			try {
				if (rs.next()) {
					System.out.println("��½�ɹ�");
					request.setAttribute("message", "��½�ɹ�");
					session1.setAttribute("username", username);
					request.getRequestDispatcher("index.jsp").forward(request,
							response);
				} else {
					System.out.println("��½ʧ��");
					request.setAttribute("message", "��½ʧ��");
					request.getRequestDispatcher("login.jsp").forward(request,
							response);

				}
			} catch (SQLException e1) {
				e1.printStackTrace();
			}

		} else {
			// ע��
			UserDAO user=new UserDAOImpl();
			User    u   =new User();
			u.setUsername(username);
			u.setPassword(password);
			HttpSession session2 = request.getSession();
			if (user.addUser(u)) {
				//�ɹ�
				System.out.println("ע��ɹ�");
				request.setAttribute("message", "ע��ɹ�");
				session2.setAttribute("username", username);
				request.getRequestDispatcher("login.jsp").forward(request,
						response);
			} else {
				//ʧ��
				System.out.println("ע��ʧ��");
				request.setAttribute("message", "ע��ʧ��");
				
			}
			
		}

	}
	
	
}
