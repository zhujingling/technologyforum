package techf.dao;

import techf.domain.User;

public interface UserDao {

	//增加用户
	/* (non-Javadoc)
	 * @see user.login.dao.impl.UserDao#add(user.login.domain.User)
	 */
	void add(User user);

	//根据用户名和密码查找用户
	/* (non-Javadoc)
	 * @see user.login.dao.impl.UserDao#find(java.lang.String, java.lang.String)
	 */
	User find(String username, String password);

	boolean find(String username);

}