package ims.actions;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class CheckSession extends ActionSupport {
	
	private String role;
	private String page;
	private String menu;

	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session2 = request.getSession();
	String str = (String) session2.getAttribute("userName");

	// this method check allready user logged in or not
	public String execute() {
	
		

		if (str != null) {
			
			
			Map session;
			session = ActionContext.getContext().getSession();
			String type = (String) session.get("type");
			
			
			if (type == "admin") 
			{
				
				this.role=(String)session.get("type");
				this.page="Adminpage";
				this.menu = "Home_admin";
				
				return "admin";

			} 
			else if (type == "regiStudent") 
			{
				this.role=(String)session.get("type");
				this.page="RegistedStudent";
				return "regiStudent";

			} 
			else if (type == "notRegiStudent") {
				
				this.role=(String)session.get("type");

				this.menu ="home_st";
				return "notRegiStudent";

			} 
			else if (type == "allowedCompany") 
			{
				this.role=(String)session.get("type");
				this.page="AllowedCompany.jsp";
				this.menu = "Home_admin";
				
				return "allowedCompany";
			} 
			else if (type == "notAllowedCompany") 
			{
				this.role=(String)session.get("type");
				
				return "notAllowedCompany";
			} 
			else 
			{
				return SUCCESS;
			}

		} else {
			
			return SUCCESS;
		}

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

	public void setMenu(String menu) {
		this.menu = menu;
	}
	
	

}
