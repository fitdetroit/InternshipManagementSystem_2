package ims.actions;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import ims.business.HandleMassageDataSession;
import ims.business.RegisterCompany;
import ims.data.Messages;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class HandleMassages extends ActionSupport{
	
	private String role;
	private String page;
	private String menu;
	
	
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session2 = request.getSession();
	String str = (String) session2.getAttribute("userName");
	
	
	
	private String senderId;
	private String subject;
	private String content;
	private String date;
	
	
	List<Messages> msgList =new ArrayList<Messages>();

	

	ApplicationContext context = new ClassPathXmlApplicationContext("Spring.xml");
	HandleMassageDataSession handleMassageDataSession = (HandleMassageDataSession)context.getBean("MessageHandle");
	
	public String HandleNewCompanyMessage(){
		// to redirect direct access actions  without login
		if (str==null) {
			return ERROR;
				
		}
		
	Messages message=new Messages();
	message.setSenderId(str);
	message.setSubject(getSubject());
	message.setContent(getContent());
	
		
  DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
  Date date = new Date();
  message.setDate(dateFormat.format(date));
       // System.out.println(dateFormat.format(date));
  
  handleMassageDataSession.saveCompanyMessageInDb(message);
  
	Map session;
	session = ActionContext.getContext().getSession();
	String type = (String) session.get("type");
	
	this.role=(String)session.get("type");
	this.page="Messages_company";
	this.menu="messages_comp";
		
		
		return SUCCESS;
	}
	
	
	
	
	//Company Message tag clickd then this method call
    public String MessageAction() {	
		
			// to redirect direct access actions  without login
			if (str==null) {
				return ERROR;
					
			}	
			
			
			msgList=handleMassageDataSession.getCompanyMessages(str);
			
				Map session;
				session = ActionContext.getContext().getSession();
				String type = (String) session.get("type");
				
				this.role=(String)session.get("type");
				this.page="Messages_company";
				this.menu="messages_comp";
				return SUCCESS;

		}
    
    
public List<Messages> getMsgList() {
		return msgList;
	}




	public void setMsgList(List<Messages> msgList) {
		this.msgList = msgList;
	}




	//when company need to create new msg this method called
    public String CreateNewMsgCompany() {	
	
	// to redirect direct access actions  without login
	if (str==null) {
		return ERROR;
			
	}	
		Map session;
		session = ActionContext.getContext().getSession();
		String type = (String) session.get("type");
		
		this.role=(String)session.get("type");
		this.page="CreateNewMsgCompany";
		this.menu="messages_comp";
		return SUCCESS;

}
    
    // company need to see outbox this method will called
    public String CompMessageOutBox() {	
 		
 		// to redirect direct access actions  without login
 		if (str==null) {
 			return ERROR;
 				
 		}	
 			Map session;
 			session = ActionContext.getContext().getSession();
 			String type = (String) session.get("type");
 			
 			this.role=(String)session.get("type");
 			this.page="CompMessageOutBox";
 			this.menu="messages_comp";
 			return SUCCESS;

 	}



     public String InboxCompany() {	
	
	// to redirect direct access actions  without login
	if (str==null) {
		return ERROR;
			
	}	
		Map session;
		session = ActionContext.getContext().getSession();
		String type = (String) session.get("type");
		
		this.role=(String)session.get("type");
		this.page="InboxCompany";
		this.menu="messages_comp";
		return SUCCESS;

}
     
     
     
     //Student Create new message
	public String MessageActionByStd() {	
			
			// to redirect direct access actions  without login
			if (str==null) {
				return ERROR;
					
			}	
				Map session;
				session = ActionContext.getContext().getSession();
				String type = (String) session.get("type");
				
				this.role=(String)session.get("type");
				this.page="MessageDefault";
				this.menu="Message_st";
				return SUCCESS;

		}
 
	
 //Student outbox   
     public String MessageOutBoxStudent() {	
     	
     	// to redirect direct access actions  without login
     	if (str==null) {
     		return ERROR;
     			
     	}	
     		Map session;
     		session = ActionContext.getContext().getSession();
     		String type = (String) session.get("type");
     		
     		this.role=(String)session.get("type");
     		this.page="MessageOutBoxStudent";
     		this.menu="Message_st";
     		return SUCCESS;

     }
	
	


	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//getters and setters

	
	public String getSenderId() {
		return senderId;
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


























	public void setSenderId(String senderId) {
		this.senderId = senderId;
	}



	public String getSubject() {
		return subject;
	}



	public void setSubject(String subject) {
		this.subject = subject;
	}



	public String getContent() {
		return content;
	}



	public void setContent(String content) {
		this.content = content;
	}



	public String getDate() {
		return date;
	}



	public void setDate(String date) {
		this.date = date;
	}



//	public String getTime() {
//		return time;
//	}
//
//
//
//	public void setTime(String time) {
//		this.time = time;
//	}

	
	
	
	
	
	
}
