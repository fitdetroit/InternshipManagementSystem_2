package ims.actions;

/*import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;			*/

public class MainMenuActions {
/*
		private String role;
		private String page;
		private String menuid;

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
				this.page="ManagePage";
				this.menuid="menu";
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
*/
	
	
	
	
	
	
	
	private String role;
	private String page;
	private String menu;

	
	public String MenuManage()
	{
		this.role="allowedCompany";
		this.page="actionOnePage";
		this.menu="Manage";
		
		return "success";	
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

