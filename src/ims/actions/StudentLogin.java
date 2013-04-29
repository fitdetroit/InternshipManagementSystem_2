package ims.actions;



import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import ims.business.CheckUserToLogin;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;



public class StudentLogin extends ActionSupport{
	
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
		
		
		
        if(checkUserToLogin.findStudent(getUserName(),sb.toString())=="registed")
        {
        	session = ActionContext.getContext().getSession();
			  session.put("userName",getUserName());
			  session.put("type","regiStudent");
        	
        	 return SUCCESS;
        }
           
        else if(checkUserToLogin.findStudent(getUserName(),sb.toString())=="notRegisted")
        {
        	session = ActionContext.getContext().getSession();
			  session.put("userName",getUserName());
			  session.put("type","notRegiStudent");
        	
        	return "UnRegisted";
        }
        	 
        else 
            return ERROR;
		
	}
	
	
	public String logOut()
	{
		session = ActionContext.getContext().getSession();
		session.remove("UserName");
		  if (session instanceof org.apache.struts2.dispatcher.SessionMap)
		  {
			  ((org.apache.struts2.dispatcher.SessionMap) session).invalidate();
			  
		  }
		
		return SUCCESS;
		
	}
	
	// to check login and redirect requested student loggedin page
	public String execute()
	{
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session2 = request.getSession();
		String str = (String) session2.getAttribute("userName");
		
		// to redirect direct access actions  without login
		if (str==null) {
			return ERROR;
				
		}
		
		return SUCCESS;
	}
	
	
	
	
	
	
	
	
	
	
	//getters and setters 
	
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
