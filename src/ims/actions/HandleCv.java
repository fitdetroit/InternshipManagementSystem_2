package ims.actions;

import ims.business.ViewCompanyDataSession;
import ims.data.Company;

import java.util.List;
import java.util.Map;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;



public class HandleCv extends ActionSupport{
	
	private String role;
	private String page;
	private String menu;
	
	private List<Company> list = null;
	private List<Company> list2 = null;
	
	ApplicationContext context = new ClassPathXmlApplicationContext("Spring.xml");
	ViewCompanyDataSession viewCompanyDataSession = (ViewCompanyDataSession) context.getBean("ViewCompany");
	
	public String allowAndRemoveCv()
	{
		setList(viewCompanyDataSession.CvNotRecivedCompanyToAdmin());
		setList2(viewCompanyDataSession.CvRecivedCompanyToAdmin());
		Map session;
		session = ActionContext.getContext().getSession();
		String userName = (String) session.get("userName");

		this.role= (String)session.get("type");
		this.page = "allowAndRemoveCv";
		this.menu = "students_admin";
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

	
	public List<Company> getList() {
		return list;
	}


	public void setList(List<Company> list) {
		this.list = list;
	}


	public List<Company> getList2() {
		return list2;
	}


	public void setList2(List<Company> list2) {
		this.list2 = list2;
	}
}
