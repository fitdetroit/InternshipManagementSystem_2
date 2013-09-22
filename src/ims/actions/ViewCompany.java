package ims.actions;


import ims.business.ViewCompanyDataSession;
import ims.data.Company;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ViewCompany extends ActionSupport{
	
	private String role;
	private String page;
	private String menu;
	
	private List<Company> list = null;
	private Company company = new Company();


	ApplicationContext context = new ClassPathXmlApplicationContext("Spring.xml");
	ViewCompanyDataSession viewCompanyDataSession = (ViewCompanyDataSession) context.getBean("ViewCompany");
	

	// to redirect direct access actions  without login
	HttpServletRequest request=ServletActionContext.getRequest();
	HttpSession session=request.getSession();
	String str=(String)session.getAttribute("userName");


	private String companyUserName;
	

	
	// this method is used to get allowd company list view to admin
	public String allowedCompanyToAdmin()
	{
		// to redirect direct access actions  without login
		if (str==null) {
			return ERROR;
				
		}
		
		setList(getViewCompanyDataSession().allowedCompanyToAdmin());
		
		Map session;
		session = ActionContext.getContext().getSession();
		String userName = (String) session.get("userName");
		setCompany(getViewCompanyDataSession().viewCompanyToCompany(userName));
		
		this.role=(String)session.get("type");
		this.page="allowedCompanyToAdmin";
		this.menu = "company_admin";
		return SUCCESS;
		
	}
	
	public String notAllowedCompanyToAdmin()
	{
		// to redirect direct access actions  without login
		if (str==null) {
			return ERROR;
				
		}
		setList(getViewCompanyDataSession().notAllowedCompanyToAdmin());
		
		Map session;
		session = ActionContext.getContext().getSession();
		String userName = (String) session.get("userName");
		setCompany(getViewCompanyDataSession().viewCompanyToCompany(userName));		
		this.role=(String)session.get("type");
		this.page="notallowedCompanyToAdmin";
		this.menu = "company_admin";
		
		return SUCCESS;
		
	}
	
	
	public String viewCompanyToCompany()
	{
		// to redirect direct access actions  without login
		if (str==null) {
			return ERROR;
				
		}
		Map session;
		session = ActionContext.getContext().getSession();
		String userName = (String) session.get("userName");
		setCompany(getViewCompanyDataSession().viewCompanyToCompany(userName));
		
		this.role=(String)session.get("type");
		this.page="CompanyViewToCompany.jsp";
		this.menu = "Home";
		return SUCCESS;
	}
	
	
	public String allowedCompanyToStudent()
	{
		// to redirect direct access actions  without login
		if (str==null) {
			return ERROR;
				
		}		
		
		Map session;
		session = ActionContext.getContext().getSession();
		String userName = (String) session.get("userName");
		setCompany(getViewCompanyDataSession().viewCompanyToCompany(userName));
		
		this.role=(String)session.get("type");
		this.page="AllowedCompanyToStudent";
		this.menu = "company_st";
		
		setList(getViewCompanyDataSession().allowedCompanyToStudent());
		return SUCCESS;
	}
	
	public String allowedCompanyToCompany()
	{
		// to redirect direct access actions  without login
		if (str==null) {
			return ERROR;
				
		}
		
		Map session;
		session = ActionContext.getContext().getSession();
		
		this.role=(String)session.get("type");
		this.page="AllowedCompanyToCompany.jsp";
		this.menu = "Manage";
		
		setList(getViewCompanyDataSession().allowedCompanyToCompany());
		return SUCCESS;
		
	}
	
	
	public String FullProfileToStudent()
	{
		// to redirect direct access actions  without login
		if (str==null) {
			return ERROR;
				
		}	
		if(getCompanyUserName()==null)
		{
			return ERROR;
		}
		
		Map session;
		session = ActionContext.getContext().getSession();
		
		this.role=(String)session.get("type");
		this.page="FullCompanyToStudent";
		this.menu = "company_st";
		
		setCompany(getViewCompanyDataSession().FullProfileToStudent(getCompanyUserName()));
		return SUCCESS;
	}
	
	public String FullProfileToCompany()
	{
		// to redirect direct access actions  without login
		if (str==null) {
			return ERROR;
				
		}
		
		if(getCompanyUserName()==null)
		{
			return ERROR;
		}
		
		setCompany(getViewCompanyDataSession().FullProfileToCompany(getCompanyUserName()));
		
		Map session;
		session = ActionContext.getContext().getSession();
		String type = (String) session.get("type");
		
		this.role=(String)session.get("type");
		this.page="FullCompanyToCompany";
		this.menu="Manage";
		return SUCCESS;
	}
	
	public String FullProfileToAdmin()
	{
		// to redirect direct access actions  without login
		if (str==null) {
			return ERROR;
				
		}		
		setCompany(getViewCompanyDataSession().FullProfileToAdmin(getCompanyUserName()));
		
		Map session;
		session = ActionContext.getContext().getSession();
		String type = (String) session.get("type");
		
		this.role=(String)session.get("type");
		this.page="FullProfileToAdmin";
		this.menu="company_admin";
		return SUCCESS;
	}
	
	
 
	

	
	//getters and setters
	
	
	public Company getCompany() {
		return company;
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

	public void setCompany(Company company) {
		this.company = company;
	}
	public List<Company> getList() {
		return list;
	}

	public void setList(List<Company> list) {
		this.list = list;
	}


	public ViewCompanyDataSession getViewCompanyDataSession() {
		return viewCompanyDataSession;
	}


	public void setViewCompanyDataSession(
			ViewCompanyDataSession viewCompanyDataSession) {
		this.viewCompanyDataSession = viewCompanyDataSession;
	}

	public String getCompanyUserName() {
		return companyUserName;
	}

	public void setCompanyUserName(String companyUserName) {
		this.companyUserName = companyUserName;
	}
	

	


}
