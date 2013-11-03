package ims.actions;




import ims.business.ViewCompanyDataSession;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class NewStudent extends ActionSupport{
	
	private String role;
	private String page;
	private String menu;
	
	private List<String> list = null;
	
	// to redirect direct access actions without login
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session = request.getSession();
	String str = (String) session.getAttribute("userName");

	
	
	// this method used to show compnay details to unregisted student
	public String execute()
	{
		// to redirect direct access actions  without login
		if (str==null) {
			
			return ERROR;
				
		}
		
		ApplicationContext context = new ClassPathXmlApplicationContext("Spring.xml");
		ViewCompanyDataSession viewCompanyDataSession = (ViewCompanyDataSession) context.getBean("RemainingCompany");
		
		
		setList(viewCompanyDataSession.remainingCompanyName());
		
		Map session;
		session = ActionContext.getContext().getSession();
		String type = (String) session.get("type");
		
		this.role=(String)session.get("type");
		this.page="StudentRegistrationForm";
		this.menu="home_notreg_st";
	
		
		return SUCCESS;
	}

	
	
	//getters and setters
	
	
	public List<String> getList() {
		return list;
	}

	public String getRole() {
		return role;
	}



	public void setRole(String role) {
		this.role = role;
	}



	public String getPage() {
		return page;
	}



	public void setPage(String page) {
		this.page = page;
	}
	
	public String getMenu() {
		return menu;
	}



	public void setMenu(String page) {
		this.menu = menu;
	}



	public void setList(List<String> list) {
		this.list = list;
	}

}
