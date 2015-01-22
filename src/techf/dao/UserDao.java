package techf.dao;

import techf.domain.User;

public interface UserDao {

	//�����û�
	/* (non-Javadoc)
	 * @see user.login.dao.impl.UserDao#add(user.login.domain.User)
	 */
	void add(User user);

	//�����û�������������û�
	/* (non-Javadoc)
	 * @see user.login.dao.impl.UserDao#find(java.lang.String, java.lang.String)
	 */
	User find(String username, String password);

	boolean find(String username);

}