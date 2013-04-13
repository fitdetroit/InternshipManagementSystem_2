package ims.actions;



import java.util.Map;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import ims.business.CheckUserToLogin;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;



public class StudentLogin extends ActionSupport{
	
	private String UserName;
	private String password;
	
	private Map session;
	
	
	public String login()
	{
		ApplicationContext context = new ClassPathXmlApplicationContext("Spring.xml");
		CheckUserToLogin checkUserToLogin = (CheckUserToLogin)context.getBean("CheckUser");
		
		
		
        if(checkUserToLogin.findStudent(getUserName(),getPassword())=="registed")
        {
        	session = ActionContext.getContext().getSession();
			  session.put("userName",getUserName());
        	
        	 return SUCCESS;
        }
           
        else if(checkUserToLogin.findStudent(getUserName(),getPassword())=="notRegisted")
        {
        	session = ActionContext.getContext().getSession();
			  session.put("userName",getUserName());
        	
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
