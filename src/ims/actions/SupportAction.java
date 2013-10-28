package ims.actions;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import ims.business.SupportDataSession;
import ims.data.Support;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class SupportAction extends ActionSupport{
	
	private String role;
	private String page;
	private String menu;
	
	
	
	private String senderEmail;
	private String senderUserName;
	private String senderMessage;
	
	
	// to redirect direct access actions without login
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session2 = request.getSession();
	String str = (String) session2.getAttribute("userName");
	
	public String support()
	{
		// to redirect direct access actions  without login
		if (str==null) {
			return ERROR;		
		}
		
		
		Support support= new Support();
		
		support.setSenderEmail(getSenderEmail());
		support.setSenderUserName(getSenderUserName());
		support.setSenderMessage(getSenderMessage());
		
		
		ApplicationContext context = new ClassPathXmlApplicationContext("Spring.xml");
		SupportDataSession supportDataSession = (SupportDataSession) context.getBean("SupportHandle");
		
		supportDataSession.saveSupportMessageInDb(support);
		
		Map session;
		session = ActionContext.getContext().getSession();
		String userName = (String) session.get("userName");
		
		this.role=(String)session.get("type");
		this.page="Support";
		
		return SUCCESS;
		
	}


	
	
	//getters and setters
	public String getSenderEmail() {
		return senderEmail;
	}


	public void setSenderEmail(String senderEmail) {
		this.senderEmail = senderEmail;
	}


	public String getSenderUserName() {
		return senderUserName;
	}


	public void setSenderUserName(String senderUserName) {
		this.senderUserName = senderUserName;
	}


	public String getSenderMessage() {
		return senderMessage;
	}


	public void setSenderMessage(String senderMessage) {
		this.senderMessage = senderMessage;
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
