package ims.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import ims.business.UpdateApplication;


import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.opensymphony.xwork2.ActionSupport;

public class UpdatingApplication extends ActionSupport{
	
	
	ApplicationContext context = new ClassPathXmlApplicationContext("Spring.xml");
	UpdateApplication updateApplication = (UpdateApplication)context.getBean("UpdateApplication");
	
	
	private String companyUserName;
	private String studentUserName;
	
	
	// to redirect direct access actions  without login
	HttpServletRequest request=ServletActionContext.getRequest();
	HttpSession session2=request.getSession();
	String str=(String)session2.getAttribute("userName");
	

	
	
	
	
	// this method is used to update selected student state to interview
	public String UpdateStateToInterview()
	{
		// to redirect direct access actions  without login
		if (str==null) {
			return ERROR;
				
		}
		
		
		updateApplication.UpdateStateToInterview(getStudentUserName(), getCompanyUserName());
		
		
		return SUCCESS;
		
	}
	
	
	
	
	
	
	
	
	
	//getters and setters
	public String getCompanyUserName() {
		return companyUserName;
	}
	public void setCompanyUserName(String companyUserName) {
		this.companyUserName = companyUserName;
	}
	public String getStudentUserName() {
		return studentUserName;
	}
	public void setStudentUserName(String studentUserName) {
		this.studentUserName = studentUserName;
	}
	
	
	

}
