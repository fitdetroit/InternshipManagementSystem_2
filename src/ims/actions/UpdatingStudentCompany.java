package ims.actions;

import java.util.Map;

import ims.business.UpdateStudent;
import ims.business.UpdateStudentComapny;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UpdatingStudentCompany extends ActionSupport{
	
	
	private String studentUserName;
	


	// to redirect direct access actions without login
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session = request.getSession();
	String str = (String) session.getAttribute("userName");
	

	ApplicationContext context = new ClassPathXmlApplicationContext("Spring.xml");
	UpdateStudentComapny updateStudentComapny = (UpdateStudentComapny) context.getBean("UpdateStudentCompany");
	
	public String UpdateStateToInterview()
	{
		// to redirect direct access actions  without login
		if (str==null) {
			return ERROR;
				
		}
		
		Map session;
		session = ActionContext.getContext().getSession();
		String comapnyUserName = (String) session.get("userName");

	
		
		updateStudentComapny.UpdateStudentStateToInterview(comapnyUserName,getStudentUserName());
		
		
		
		return SUCCESS;
		
	}
	
	public String UpdateStateToSelected()
	{
		// to redirect direct access actions  without login
		if (str==null) {
			return ERROR;
				
		}
		
		Map session;
		session = ActionContext.getContext().getSession();
		String comapnyUserName = (String) session.get("userName");

	
		
		updateStudentComapny.UpdateStudentStateToSelected(comapnyUserName,getStudentUserName());
		
		
		
		return SUCCESS;
		
	}
	
	
	
	// getters and setters
	public String getStudentUserName() {
		return studentUserName;
	}

	public void setStudentUserName(String studentUserName) {
		this.studentUserName = studentUserName;
	}
	
	
	

}
