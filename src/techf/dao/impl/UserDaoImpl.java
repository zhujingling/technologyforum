package techf.dao.impl;

import java.text.SimpleDateFormat;

import org.dom4j.Document;
import org.dom4j.Element;

import techf.dao.UserDao;
import techf.domain.User;
import techf.utils.XmlUtils;


public class UserDaoImpl implements UserDao {
	//增加用户
		/* (non-Javadoc)
		 * @see user.login.dao.impl.UserDao#add(user.login.domain.User)
		 */
		/* (non-Javadoc)
		 * @see techf.dao.impl.UserDao#add(techf.domain.User)
		 */
		public void add(User user){
			try {
				Document document=XmlUtils.getDocument();
				Element root=document.getRootElement();
				Element user_tag=root.addElement("user");
				user_tag.setAttributeValue("id",user.getId());
				user_tag.setAttributeValue("username",user.getUsername());
				user_tag.setAttributeValue("password",user.getPassword());
				user_tag.setAttributeValue("email",user.getEmail());
				user_tag.setAttributeValue("birthday",user.getBirthday()==null?"":user.getBirthday().toLocaleString());
				user_tag.setAttributeValue("nickname", user.getNickname());
				
				XmlUtils.writeToXml(document);
			} catch (Exception e) {
				// TODO: handle exception
				throw new RuntimeException(e);
			}
		}
		
		//根据用户名和密码查找用户
		/* (non-Javadoc)
		 * @see user.login.dao.impl.UserDao#find(java.lang.String, java.lang.String)
		 */
		/* (non-Javadoc)
		 * @see techf.dao.impl.UserDao#find(java.lang.String, java.lang.String)
		 */
		public User find(String username,String password){
			try {
				Document document=XmlUtils.getDocument();
				Element element=(Element) document.selectSingleNode("//user[@username='"+username+"' and @password='"+password+"']");
				if (element==null) {
					return null;
				}
				User user=new User();
				String date=element.attributeValue("birthday");
				if (date==null||date.equals("")) {
					user.setBirthday(null);
				}
				else {
					SimpleDateFormat dFormat=new SimpleDateFormat("yyyy-mm-dd");
					user.setBirthday(dFormat.parse(date));
				}
				user.setId(element.attributeValue("id"));
				user.setUsername(element.attributeValue("username"));
				user.setPassword(element.attributeValue("password"));
				user.setEmail(element.attributeValue("email"));
				user.setNickname(element.attributeValue("nickname"));
				return user;
				
			} catch (Exception e) {
				// TODO: handle exception
				throw new RuntimeException(e);
			}
		}

		/* (non-Javadoc)
		 * @see techf.dao.impl.UserDao#find(java.lang.String)
		 */
		public boolean find(String username) {
			// TODO Auto-generated method stub
			try {
				Document document=XmlUtils.getDocument();
				Element element=(Element) document.selectSingleNode("//user[@username='"+username+"']");
				if (element==null) {
					return false;
				}
				else{
					return true;
				}
				
			} catch (Exception e) {
				// TODO: handle exception
				throw new RuntimeException(e);
			}
		}
}
