package techf.service.impl;

import techf.dao.UserDao;
import techf.dao.impl.UserDaoImpl;
import techf.domain.User;
import techf.exception.UserExistException;
import techf.utils.ServiceUtils;

public class BusinessServiceImpl {
	private UserDao userDao=new UserDaoImpl();
	//Íê³É×¢²á
	public void register(User user) throws UserExistException{
		boolean b=userDao.find(user.getUsername());
		if(b){
			throw new UserExistException();
		}
		else {
			user.setPassword(ServiceUtils.md5(user.getPassword()));
			userDao.add(user);
		}
	}
	
	public User login(String username,String password){
		password=ServiceUtils.md5(password);
		return userDao.find(username, password);
	}
}
