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
	
	
	private String role;
	private String page;
	private String menu;

	private Company company;
	private User user;
	
	// company details to Edit company form
	private String companyUserName;
	private String companyName;
	private String companyName2;// this variable for not editable value to form
	private String companyTelephone;
	private String companyAddress;
	private String companyWeb;
	private String noOfVacancies;
	private String password;
	private String password2;
	private String conPassword;
	private boolean allowed;
	private String aboutCompany;
	private String technologies;
	private String companyEmail;
	private String contactPerson;
	private String contactPersonTelNo;
	private String contactPersonEmail;
	private String alContactPerson;
	private String alContactPersonTelNo;
	private String alContactPersonEmail;



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
		// set action class variable form database to view in jsp


		setCompany(getUpdateCompany().getDetails(userName));
		setUser(getUpdateCompany().getDetails2(userName));

		setCompanyUserName(company.getCompanyUserName());
		setCompanyName(company.getCompanyName());
		setCompanyTelephone(company.getCompanyTelephone());
		setContactPerson(company.getContactPerson());
		setCompanyAddress(company.getCompanyAddress());
		setCompanyWeb(company.getCompanyWeb());
		setNoOfVacancies(company.getNoOfVacancies());
		setAllowed(true);
		setCompanyName2(company.getCompanyName());
		setAboutCompany(company.getAboutCompany());
		setTechnologies(company.getTechnologies());
		setCompanyEmail(company.getCompanyEmail());
		setContactPerson(company.getContactPerson());
		setContactPersonEmail(company.getContactPersonEmail());
		setContactPersonTelNo(company.getContactPersonTelNo());
		setAlContactPerson(company.getAlContactPerson());
		setAlContactPersonEmail(company.getAlContactPersonEmail());
		setAlContactPersonTelNo(company.getAlContactPersonTelNo());
		
		setPassword(user.getPassword());		
		setPassword2(user.getPassword());
		setConPassword(user.getPassword());
		
		

		this.role=(String)session.get("type");
		this.page="EditCompany.jsp";
		return SUCCESS;
	}

	
	
	
	
	
	
	
	
	// getters and setters

	public String getRole() {
		return role;
	}









	public void setRole(String role) {
		this.role = role;
	}









	public String getCompanyUserName() {
		return companyUserName;
	}

	public String getPage() {
		return page;
	}









	public void setPage(String page) {
		this.page = page;
	}









	public HttpServletRequest getRequest() {
		return request;
	}









	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}









	public void setCompanyUserName(String companyUserName) {
		this.companyUserName = companyUserName;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getCompanyName2() {
		return companyName2;
	}

	public void setCompanyName2(String companyName2) {
		this.companyName2 = companyName2;
	}



	public String getCompanyTelephone() {
		return companyTelephone;
	}


	public void setCompanyTelephone(String companyTelephone) {
		this.companyTelephone = companyTelephone;
	}

	public String getContactPerson() {
		return contactPerson;
	}


	public void setContactPerson(String contactPerson) {
		this.contactPerson = contactPerson;
	}

	public String getCompanyAddress() {
		return companyAddress;
	}


	public void setCompanyAddress(String companyAddress) {
		this.companyAddress = companyAddress;
	}


	public String getCompanyWeb() {
		return companyWeb;
	}

	public void setCompanyWeb(String companyWeb) {
		this.companyWeb = companyWeb;
	}

	public String getNoOfVacancies() {
		return noOfVacancies;
	}


	public void setNoOfVacancies(String noOfVacancies) {
		this.noOfVacancies = noOfVacancies;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPassword2() {
		return password2;
	}

	public void setPassword2(String password2) {
		this.password2 = password2;
	}

	public String getConPassword() {
		return conPassword;
	}

	public void setConPassword(String conPassword) {
		this.conPassword = conPassword;
	}

	public boolean isAllowed() {
		return allowed;
	}

	public void setAllowed(boolean allowed) {
		this.allowed = allowed;
	}
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









	public String getMenu() {
		return menu;
	}









	public void setMenu(String menu) {
		this.menu = menu;
	}









	public String getAboutCompany() {
		return aboutCompany;
	}









	public void setAboutCompany(String aboutCompany) {
		this.aboutCompany = aboutCompany;
	}









	public String getTechnologies() {
		return technologies;
	}









	public void setTechnologies(String technologies) {
		this.technologies = technologies;
	}









	public String getCompanyEmail() {
		return companyEmail;
	}









	public void setCompanyEmail(String companyEmail) {
		this.companyEmail = companyEmail;
	}









	public String getContactPersonTelNo() {
		return contactPersonTelNo;
	}









	public void setContactPersonTelNo(String contactPersonTelNo) {
		this.contactPersonTelNo = contactPersonTelNo;
	}









	public String getContactPersonEmail() {
		return contactPersonEmail;
	}









	public void setContactPersonEmail(String contactPersonEmail) {
		this.contactPersonEmail = contactPersonEmail;
	}









	public String getAlContactPerson() {
		return alContactPerson;
	}









	public void setAlContactPerson(String alContactPerson) {
		this.alContactPerson = alContactPerson;
	}









	public String getAlContactPersonTelNo() {
		return alContactPersonTelNo;
	}









	public void setAlContactPersonTelNo(String alContactPersonTelNo) {
		this.alContactPersonTelNo = alContactPersonTelNo;
	}









	public String getAlContactPersonEmail() {
		return alContactPersonEmail;
	}









	public void setAlContactPersonEmail(String alContactPersonEmail) {
		this.alContactPersonEmail = alContactPersonEmail;
	}

	
	



}
