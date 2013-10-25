package ims.actions;

/*
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

*/



import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 

public class NewUserNameCheck extends HttpServlet {
 
@Override
protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
 
response.setContentType("text/html;charset=UTF-8");
PrintWriter out = response.getWriter();
 
int n1 = Integer.parseInt(request.getParameter("n1"));
int n2 = Integer.parseInt(request.getParameter("n2"));
 
//out.println(n1 * n2 + "");
int z = n1*n2;
if( z >10 ){
	
	out.println(1);

	
}

else {
	out.println(0);
	
}
 
}
}
