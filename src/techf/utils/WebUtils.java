package techf.utils;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.beanutils.BeanUtils;

public class WebUtils {
	public static <T>T RequestToBean(HttpServletRequest request,Class<T> beanclass) {
		try {
			T bean=beanclass.newInstance();
			
			Enumeration enumeration=request.getParameterNames();
			while (enumeration.hasMoreElements()) {
				String name=(String) enumeration.nextElement();
				String value=request.getParameter(name);
				BeanUtils.setProperty(bean, name, value);			
			}
			return bean;
		} catch (Exception e) {
			// TODO: handle exception
			throw new RuntimeException(e);
		}
	}
}
