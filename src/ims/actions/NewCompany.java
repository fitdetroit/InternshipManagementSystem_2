package ims.actions;

import com.opensymphony.xwork2.ActionSupport;

public class NewCompany extends ActionSupport{
	
	private String role;
	private String page;
	private String menu;
	
	public String applyForRegistration()
	{
		page="CompanyRegistrationForm.jsp";
		return SUCCESS;
	}

	
	
	
	
	
	
	
	//getters and setters
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

	public void setMenu(String menu) {
		this.menu = menu;
	}
	

	
	
}
