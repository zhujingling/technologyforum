package techf.junit.test;

import java.util.Date;

import org.junit.Test;

import techf.dao.UserDao;
import techf.dao.impl.UserDaoImpl;
import techf.domain.User;


public class UserDaoTest {
	@Test
	   public void addTest()  {
		   User user=new User();
		   user.setBirthday(new Date());
		   user.setId("3");
		   user.setUsername("ccc");
		   user.setPassword("123");
		   user.setEmail("ccc@sina.com");
		   user.setNickname("ÀÔ»®");
		   
		   UserDao userDaoImpl=new UserDaoImpl();
		   userDaoImpl.add(user);
	   }
}
