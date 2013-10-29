package ims.actions;

import java.io.File;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import ims.business.UpdateCompany;
import ims.data.Company;
import ims.data.User;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UpdatingCompanyByCompany extends ActionSupport{
	
	private String role;
	private String page;
	private String menu;

	
	private String companyUserName=null;
	private String companyName=null;
	private String companyTelephone=null;
	private String contactPerson=null;
	private String companyAddress;
	private String companyWeb=null;
	private String noOfVacancies=null;
	private String password =null;
	private String password2=null;
	private String conPassword=null;
	private boolean allowed;
	
	
	//to upload profile picture
	private File ProfilePicture;
	private String ProfilePictureFileName;
	private String ProfilePictureContentType;
	private String myFileFileName;
	private String destPath;
	


	private Company company;
	User user = new User();
	
	ApplicationContext context = new ClassPathXmlApplicationContext("Spring.xml");
	UpdateCompany updateCompany = (UpdateCompany)context.getBean("UpdateCompany");
	
	// to redirect direct access actions  without login
	HttpServletRequest request=ServletActionContext.getRequest();
	HttpSession session=request.getSession();
	String str=(String)session.getAttribute("userName");
	

	
	
	
	// this method is used to update company profile 
	public String updateCompany() throws NoSuchAlgorithmException
	{
		// to redirect direct access actions  without login
		if (str==null) {
			return ERROR;
				
		}
		
		if(getCompanyName()==null&&getCompanyTelephone()==null&&getContactPerson()==null&&getCompanyAddress()==null&&getCompanyWeb()==null&&getNoOfVacancies()==null&&getPassword()==null)
		{
			return ERROR;
		}
		
	
		Map session;
		session = ActionContext.getContext().getSession();
		String userName = (String) session.get("userName");
		setCompany(updateCompany.getDetails(userName));
	
		
		
		// uploading profile picture
		myFileFileName=getCompanyUserName();
		myFileFileName=myFileFileName.concat(".jpg");
		System.out.println(myFileFileName);
				
		ServletContext servletContext = ServletActionContext.getServletContext(); 
		String dataDir = servletContext.getRealPath("/WEB-INF/../assets/img/ProfileImages"); 
	      destPath = dataDir;
        if(!(ProfilePicture==null))
        {
  	      try{
 	     	 System.out.println("Src File name: " + ProfilePicture);
 	     	 System.out.println("Dst File name: " + myFileFileName);
 	     	    	 
 	     	 File destFile  = new File(destPath, myFileFileName);
 	    	 FileUtils.copyFile(ProfilePicture, destFile);
 	  
 	      }catch(IOException e){
 	         e.printStackTrace();
 	         return ERROR;
 	      }
 		
        	
        }
		
		
	
		if(getCompanyUserName()!=null)
		company.setCompanyUserName(getCompanyUserName());
		if(getCompanyName()!=null)
		company.setCompanyName(getCompanyName());
		if(getCompanyTelephone()!=null)
		company.setCompanyTelephone(getCompanyTelephone());
		if(getContactPerson()!=null)
		company.setContactPerson(getContactPerson());
		if(getCompanyAddress()!=null)
		company.setCompanyAddress(getCompanyAddress());
		if(getCompanyWeb()!=null)
		company.setCompanyWeb(getCompanyWeb());
		if(getNoOfVacancies()!=null)
		company.setNoOfVacancies(getNoOfVacancies());
		if(company.isAllowed()==true)
		company.setAllowed(true);
		
		
		user.setUserName(getCompanyUserName());
		user.setType('c');
		if(getPassword().length()==0)
		{
			user.setPassword(getPassword2());
		}
		else
		{
			System.out.println(getPassword());

			// password encriptation
			 MessageDigest md = MessageDigest.getInstance("MD5");
		        md.update(password.getBytes());
		 
		        byte byteData[] = md.digest();
		 
		        //convert the byte to hex format method 1
		        StringBuffer sb = new StringBuffer();
		        for (int i = 0; i < byteData.length; i++) {
		         sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
		        }
			user.setPassword(sb.toString());
		}
		
		
		

		
		updateCompany.updateCompany(getCompanyUserName(),company,user);
		
	
		if(company.isAllowed()==false)
		{
			return "UnRegisted";
			
			
		}
		
		return SUCCESS;
		
	}
	
	

	
	
	
// this method is used to validate new password and confrom password in updating form	
	public void validate()
	{
		if(getPassword()!=null)
		{
			if(getPassword().length()!=0)
			{
				
				if(!(getPassword().equals(getConPassword()))){
					addFieldError("conPassword", "password not match");
					
				}
				
			}
		}
		


	}
	
	
	
	
	
	
	
	// gettes and setters
	
	
	public File getProfilePicture() {
		return ProfilePicture;
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






	public void setProfilePicture(File profilePicture) {
		ProfilePicture = profilePicture;
	}

	public String getProfilePictureFileName() {
		return ProfilePictureFileName;
	}

	public void setProfilePictureFileName(String profilePictureFileName) {
		ProfilePictureFileName = profilePictureFileName;
	}

	public String getProfilePictureContentType() {
		return ProfilePictureContentType;
	}

	public void setProfilePictureContentType(String profilePictureContentType) {
		ProfilePictureContentType = profilePictureContentType;
	}


	public String getPassword2() {
		return password2;
	}


	public void setPassword2(String password2) {
		this.password2 = password2;
	}
	public String getCompanyUserName() {
		return companyUserName;
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
	public Company getCompany() {
		return company;
	}
	public void setCompany(Company company) {
		this.company = company;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}

}
