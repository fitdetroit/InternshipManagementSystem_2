package ims.actions;

import ims.business.MenuManageDataSession;

import java.util.Arrays;
import java.util.List;
import java.util.Map;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;		

public class MainMenuActions extends ActionSupport{

		private String role;
		private String page;
		private String menu;
		
		
		
		private String ApplyStudentSummery;
		private int applyStudentCount;
		private int interviewStudentCount;
		private int selectedStudentCount;
		private int notSelectedStudentCount;
		

		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session2 = request.getSession();
		String str = (String) session2.getAttribute("userName");

		// this method check allready user logged in or not
		public String MenuManage() {	
			
			// to redirect direct access actions  without login
			if (str==null) {
				return ERROR;
					
			}	
				Map session;
				session = ActionContext.getContext().getSession();
				String type = (String) session.get("type");
				
				
				
				ApplicationContext context = new ClassPathXmlApplicationContext("Spring.xml");
				MenuManageDataSession menuManageDataSession = (MenuManageDataSession) context.getBean("MenuManage");
				
				ApplyStudentSummery=menuManageDataSession.companyStateSummary(str);
				
				//System.out.println("dfdfdfdfdfdfdfdfdfdfdf");
				List<String> items = Arrays.asList(ApplyStudentSummery.split(","));
				
				
				//System.out.println("kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk");
				applyStudentCount = Integer.parseInt(items.get(0));
				notSelectedStudentCount = Integer.parseInt(items.get(1));
				interviewStudentCount = Integer.parseInt(items.get(2));
				selectedStudentCount = Integer.parseInt(items.get(3));
				
				
				
				
				this.role=(String)session.get("type");
				this.page="ManageStudents";
				this.menu="Manage";
				return SUCCESS;

		}
		
		public String HomeMenu() {	
			
			// to redirect direct access actions  without login
			if (str==null) {
				return ERROR;
					
			}	
				Map session;
				session = ActionContext.getContext().getSession();
				String type = (String) session.get("type");
				
				this.role=(String)session.get("type");
				this.page="AllowedCompany";
				this.menu="Home";
				return SUCCESS;

		}
		
		public String SupportMenu() {	
			
			// to redirect direct access actions  without login
			if (str==null) {
				return ERROR;
					
			}	
				Map session;
				session = ActionContext.getContext().getSession();
				String type = (String) session.get("type");
				
				this.role=(String)session.get("type");
				this.page="Support";
				this.menu="Support";
				return SUCCESS;

		}//SupportMenu
		public String UpdateVecancies() {	
			
			// to redirect direct access actions  without login
			if (str==null) {
				return ERROR;
					
			}	
				Map session;
				session = ActionContext.getContext().getSession();
				String type = (String) session.get("type");
				
				this.role=(String)session.get("type");
				this.page="UpdateVecancies";
				this.menu="home";
				return SUCCESS;

		}//UpdateVecancies
		
		
		public String HomeActionByStd() {	
			
			// to redirect direct access actions  without login
			if (str==null) {
				return ERROR;
					
			}	
				Map session;
				session = ActionContext.getContext().getSession();
				String type = (String) session.get("type");
				
				this.role=(String)session.get("type");
				this.page="RegistedStudent";
				this.menu="home_st";
				return SUCCESS;

		}//HomeActionByStd
		
		public String CompanyActionByStd() {	
			
			// to redirect direct access actions  without login
			if (str==null) {
				return ERROR;
					
			}	
				Map session;
				session = ActionContext.getContext().getSession();
				String type = (String) session.get("type");
				
				this.role=(String)session.get("type");
				this.page="MenuCompanypage";
				this.menu="company_st";
				return SUCCESS;

		}//CompanyActionByStd
		
		
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

		}//MessageActionByStd
		
		public String internshipActionByStd() {	
			
			// to redirect direct access actions  without login
			if (str==null) {
				return ERROR;
					
			}	
				Map session;
				session = ActionContext.getContext().getSession();
				String type = (String) session.get("type");
				
				this.role=(String)session.get("type");
				this.page="internshipDefault";
				this.menu="internship_st";
				return SUCCESS;

		}//internshipActionByStd
		
		
       public String MessageAction() {	
			
			// to redirect direct access actions  without login
			if (str==null) {
				return ERROR;
					
			}	
				Map session;
				session = ActionContext.getContext().getSession();
				String type = (String) session.get("type");
				
				this.role=(String)session.get("type");
				this.page="Messages_company";
				this.menu="messages_comp";
				return SUCCESS;

		}//MessageAction

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

}//CreateNewMsgCompany



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

}//InboxCompany
		
// Side menu actions for Registered Students
		


		public String getRole() {
			return role;
		}

		public int getApplyStudentCount() {
			return applyStudentCount;
		}

		public void setApplyStudentCount(int applyStudentCount) {
			this.applyStudentCount = applyStudentCount;
		}

		public int getInterviewStudentCount() {
			return interviewStudentCount;
		}

		public void setInterviewStudentCount(int interviewStudentCount) {
			this.interviewStudentCount = interviewStudentCount;
		}

		public int getSelectedStudentCount() {
			return selectedStudentCount;
		}

		public void setSelectedStudentCount(int selectedStudentCount) {
			this.selectedStudentCount = selectedStudentCount;
		}

		public int getNotSelectedStudentCount() {
			return notSelectedStudentCount;
		}

		public void setNotSelectedStudentCount(int notSelectedStudentCount) {
			this.notSelectedStudentCount = notSelectedStudentCount;
		}

		public String getApplyStudentSummery() {
			return ApplyStudentSummery;
		}

		public void setApplyStudentSummery(String applyStudentSummery) {
			ApplyStudentSummery = applyStudentSummery;
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

