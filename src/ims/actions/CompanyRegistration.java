package ims.actions;

import java.io.File;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang3.ObjectUtils.Null;

import java.io.IOException; 

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Map;

import javax.servlet.ServletContext;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;


import ims.business.RegisterCompany;
import ims.business.UpdateCompany;
import ims.data.Company;
import ims.data.User;

//import net.tanesha.recaptcha.ReCaptchaImpl;
//import net.tanesha.recaptcha.ReCaptchaResponse; 

public class CompanyRegistration extends ActionSupport{
	
	private String role;
	private String page;
	private String menu;
	
	
	private String companyUserName;
	private String companyName;
	private String companyTelephone;
	private String companyAddress;
	private String companyWeb;
	private String noOfVacancies;
	private String password;
	private String conPassword;
	private boolean allowed;
	private String technologies;
	private String companyEmail;
	private String contactPerson;
	private String contactPersonTelNo;
	private String contactPersonEmail;
	private String alContactPerson;
	private String alContactPersonTelNo;
	private String alContactPersonEmail;
	
	Company company = new Company();
	User user = new User();
		
	//to upload profile picture
	private File ProfilePicture;
	private String ProfilePictureFileName;
	private String ProfilePictureContentType;	
   // private File myFile;
  // private String myFileContentType;
	private String myFileFileName;
	private String destPath;


	
	public String registration() throws NoSuchAlgorithmException
	{
		// uploading profile picture

        if(!(ProfilePicture==null))
        {
    		myFileFileName=getCompanyUserName();
    		myFileFileName=myFileFileName.concat(".jpg");
    		System.out.println(myFileFileName);
    				
    		ServletContext servletContext = ServletActionContext.getServletContext(); 
    		String dataDir = servletContext.getRealPath("/WEB-INF/../assets/img/ProfileImages"); 
    	      destPath = dataDir;
    	      
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

	
		
		
		// set values to new company object
		company.setCompanyUserName(getCompanyUserName());
		company.setCompanyName(getCompanyName());
		company.setCompanyTelephone(getCompanyTelephone());
		company.setContactPerson(getContactPerson());
		company.setCompanyAddress(getCompanyAddress());
		company.setCompanyWeb(getCompanyWeb());
		company.setNoOfVacancies(getNoOfVacancies());
		company.setAllowed(false);
		company.setTechnologies(getTechnologies());
		company.setCompanyEmail(getCompanyEmail());
		company.setContactPerson(getCompanyName());
		company.setContactPersonEmail(getContactPersonEmail());
		company.setContactPersonTelNo(getContactPersonTelNo());
		company.setAlContactPerson(getAlContactPerson());
		company.setAlContactPersonEmail(getAlContactPersonEmail());
		company.setAlContactPersonTelNo(getAlContactPersonTelNo());
	
		
		
		///password encrptation
		 MessageDigest md = MessageDigest.getInstance("MD5");
	        md.update(password.getBytes());	 
	        byte byteData[] = md.digest();
	 
	        //convert the byte to hex format method 1
	        StringBuffer sb = new StringBuffer();
	        for (int i = 0; i < byteData.length; i++) {
	         sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
	        }
	 
	       // System.out.println("Digest(in hex format):: " + sb.toString());
	
	 
	        
	    // set values to new user object
		user.setUserName(getCompanyUserName());
		user.setPassword(sb.toString());
		user.setType('c');
		
	
		
		
		
		
		ApplicationContext context = new ClassPathXmlApplicationContext("Spring.xml");
		RegisterCompany registerCompany = (RegisterCompany)context.getBean("RegisterCompany");
		
		registerCompany.saveCompany(company,user);
		
		
		
		//create session for new company
		
		 Map session;
     	session = ActionContext.getContext().getSession();
			  session.put("userName",getCompanyUserName());
			  session.put("type","notAllowedCompany");
		
		return SUCCESS;
	}
	
	
	

	// this validate method is used to validate passwod and confrom passwod and check username allready in database
/*	public void validate()
	{
			
		if(!(getPassword().equals(getConPassword()))){
			addFieldError("conPassword", "password not match");
		}
		

		
		//for check username is allready in use
		ApplicationContext context = new ClassPathXmlApplicationContext("Spring.xml");
		RegisterCompany registerCompany = (RegisterCompany)context.getBean("RegisterCompany");
		if(registerCompany.cheakUsernameAllreadyAvailable(getCompanyUserName()))
		{
			addFieldError("companyUserName", "User Name alreay in Use please use different one");
		}
		
		
	}*/
	





	
	
	
	
	
	// getters and setters
	
	
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




	public void setCompany(Company company) {
		this.company = company;
	}



	public User getUser() {
		return user;
	}



	public void setUser(User user) {
		this.user = user;
	}



	public File getProfilePicture() {
		return ProfilePicture;
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



	public void setPassword(String password) {
		this.password = password;
	}

	public String getConPassword() {
		return conPassword;
	}



	public void setConPassword(String conPassword) {
		this.conPassword = conPassword;
	}



	public String getPassword() {
		return password;
	}



	public boolean isAllowed() {
		return allowed;
	}

	public void setAllowed(boolean allowed) {
		this.allowed = allowed;
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




	public String getMenu() {
		return menu;
	}




	public void setMenu(String menu) {
		this.menu = menu;
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
