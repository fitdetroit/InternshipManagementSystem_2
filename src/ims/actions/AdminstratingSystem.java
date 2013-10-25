package ims.actions;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import ims.business.AdministatingDataSession;
import ims.business.UpdateCompany;
import ims.data.Administration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.opensymphony.xwork2.ActionSupport;

public class AdminstratingSystem extends ActionSupport{
	
	private String newBatch;
	
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session2 = request.getSession();
	String str = (String) session2.getAttribute("userName");
	
	
	ApplicationContext context = new ClassPathXmlApplicationContext("Spring.xml");
	AdministatingDataSession administatingDataSession = (AdministatingDataSession) context.getBean("AdministatingSystem");
	
	public String newInternshipPeriod()
	{
		
		// to redirect direct access actions  without login
		if (str==null) {
			return ERROR;
				
		}
		
		Administration administration =new Administration();
		
		  DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		  Date date = new Date();
		  
		
		administration.setBatch(getNewBatch());
		administration.setStartDate(dateFormat.format(date));
		administration.setInternshipRegiPeriod(true);
		administration.setAdminId(1);
		
		administatingDataSession.startNewInternshipPeriod(administration);
		//System.out.println(getNewBatch()+"dfdfdfdffd");		
				
		return SUCCESS;
		
	}

	
	
	
	
	//getters and setters
	public String getNewBatch() {
		return newBatch;
	}

	public void setNewBatch(String newBatch) {
		this.newBatch = newBatch;
	}
	
	
	
	
	
	

}
