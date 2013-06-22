package ims.actions;

import ims.business.RegisterCompany;
import ims.business.UpdateCompany;
import ims.data.Company;
import ims.data.User;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class EditCompany extends ActionSupport {
	
	


	private Company company;
	private User user;
	


	Map session;
	
	ApplicationContext context = new ClassPathXmlApplicationContext("Spring.xml");
	UpdateCompany updateCompany = (UpdateCompany) context.getBean("UpdateCompany");
	
	

	// to redirect direct access actions without login
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session2 = request.getSession();
	String str = (String) session2.getAttribute("userName");



	// this method call to get data form the database to view in form to edit
	public String editDetails() {
		
		// to redirect direct access actions  without login
		if (str==null) {
			return ERROR;
				
		}

		session = ActionContext.getContext().getSession();
		String userName = (String) session.get("userName");

		setCompany(getUpdateCompany().getDetails(userName));
		setUser(getUpdateCompany().getDetails2(userName));



		return SUCCESS;
	}

	
	
	
	
	
	
	
	
	// getters and setters


	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}

	public ApplicationContext getContext() {
		return context;
	}

	public void setContext(ApplicationContext context) {
		this.context = context;
	}

	public UpdateCompany getUpdateCompany() {
		return updateCompany;
	}

	public void setUpdateCompany(UpdateCompany updateCompany) {
		this.updateCompany = updateCompany;
	}




}
