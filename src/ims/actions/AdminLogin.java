package ims.actions;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Map;

import ims.business.CheckUserToLogin;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class AdminLogin extends ActionSupport{
	private String UserName;
	private String password;
	
	private Map session;
	
	
	public String login() throws NoSuchAlgorithmException
	{
		ApplicationContext context = new ClassPathXmlApplicationContext("Spring.xml");
		CheckUserToLogin checkUserToLogin = (CheckUserToLogin)context.getBean("CheckUser");
		
		
		///password encrptation
		 MessageDigest md = MessageDigest.getInstance("MD5");
	        md.update(password.getBytes());
	 
	        byte byteData[] = md.digest();
	 
	        //convert the byte to hex format method 1
	        StringBuffer sb = new StringBuffer();
	        for (int i = 0; i < byteData.length; i++) {
	         sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
	        }
	 
	       // System.out.println("Digest(in hex format):: " + sb.toString());
		
		if(checkUserToLogin.findAdmin(getUserName(),sb.toString())=="success")
		{
        	session = ActionContext.getContext().getSession();
			  session.put("userName",getUserName());
			return SUCCESS;
			
		}
		else
		{
			return ERROR;
		}
		
	}
	
	
	
	
	public String LogOut()
	{
		session = ActionContext.getContext().getSession();
		session.remove("UserName");
		  if (session instanceof org.apache.struts2.dispatcher.SessionMap)
		  {
			  ((org.apache.struts2.dispatcher.SessionMap) session).invalidate();
			  
		  }
		
		return SUCCESS;
		
	}
	
	
	
	
	
	
	
	
	// getters and setters
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	

}
