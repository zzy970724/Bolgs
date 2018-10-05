package blog.service;

import blog.Dao.UserDAO;
import blog.DaoImpl.UserDAOImpl;
import blog.Entity.User;

public class UserBiz {

	UserDAO ud=new UserDAOImpl();
	public boolean login(User user){
		
		boolean b=ud.login(user);
		return b;
	}

}
