package techf.utils;

import java.security.MessageDigest;

public class ServiceUtils {
	public static String md5(String password){
		   try {
//			MessageDigest md=MessageDigest.getInstance("md5");
//			byte[] md5=md.digest(password.getBytes());
//			BASE64Encoder encoder=new BASE64Encoder();
//			return encoder.encode(md5);
			   return password;
		} catch (Exception e) {
			// TODO: handle exception
			throw new RuntimeException(e);
		}
	   }
}
