package ims.actions;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;		

public class MainMenuActions extends ActionSupport{

		private String role;
		private String page;
		private String menu;

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

