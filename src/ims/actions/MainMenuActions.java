package ims.actions;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * @author Charith Hewage
 *
 */
public class MainMenuActions extends ActionSupport{

		private String role;
		private String page;
		private String page1;

		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session2 = request.getSession();
		String str = (String) session2.getAttribute("userName");

		// this method check allready user logged in or not
		public String Manage() {	
			
			// to redirect direct access actions  without login
			if (str==null) {
				return ERROR;
					
			}
				
				Map session;
				session = ActionContext.getContext().getSession();
				String type = (String) session.get("type");
				
				this.role=(String)session.get("type");
				this.page="ManagePage";
				this.page1="ManagePage";
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
		
		public String getPage1() {
			return page1;
		}

		public void setPage1(String page1) {
			this.page1 = page1;
		}
		
}

