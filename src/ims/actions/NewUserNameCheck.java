package ims.actions;

import ims.business.RegisterCompany;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;



public class NewUserNameCheck {
	
	private String companyUserName;
	


	public boolean CheckUser()
	{
		ApplicationContext context = new ClassPathXmlApplicationContext("Spring.xml");
		RegisterCompany registerCompany = (RegisterCompany)context.getBean("RegisterCompany");
		if(registerCompany.cheakUsernameAllreadyAvailable(getCompanyUserName()))
		{
			//addFieldError("companyUserName", "User Name alreay in Use please use different one");
			
			return false;
		}
		
		return true;
	}
	
	
	
	
	
	public String getCompanyUserName() {
		return companyUserName;
	}

	public void setCompanyUserName(String companyUserName) {
		this.companyUserName = companyUserName;
	}
	

}
