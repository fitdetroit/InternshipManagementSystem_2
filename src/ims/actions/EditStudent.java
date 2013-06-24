package ims.actions;


import ims.business.UpdateStudent;
import ims.data.Student;
import ims.data.StudentComplitedProjects;
import ims.data.StudentOtherQulification;
import ims.data.User;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;


// this class give details form database fo Edit Student Form
public class EditStudent extends ActionSupport{
	


	Map session;
	
	// to redirect direct access actions  without login
	HttpServletRequest request=ServletActionContext.getRequest();
	HttpSession session2=request.getSession();
	String str=(String)session2.getAttribute("userName");
	
	//private List<StudentComplitedProjects> studentComplitedProjects= new ArrayList<StudentComplitedProjects>();

	private Student student;
	private User user;

	private int projectId1=0;
	private int projectId2=0;;
	private String projectTitle1;
	private String projectDescription1;
	private String projectYear1;
	private String projectTitle2;
	private String projectDescription2;
	private String projectYear2;

	private int otherQulificationId1;
	private int otherQulificationId2;
	private String otherQulification1;
	private String otherQulification2;





	ApplicationContext context = new ClassPathXmlApplicationContext("Spring.xml");
	UpdateStudent updateStudent = (UpdateStudent) context.getBean("UpdateStudent");
	
	

	
	
	
	public String editDetails() {
		
		
		// to redirect direct access actions  without login
		if (str==null) {
			return ERROR;
				
		}
		
		session = ActionContext.getContext().getSession();
		String userName = (String) session.get("userName");

		setStudent(getUpdateStudent().getDetails(userName));
		setUser(getUpdateStudent().getDetails2(userName));
		
	
		//studentComplitedProjects.addAll(getStudent().getStudentComplitedProjects());
		
		int x=1;
		for(StudentComplitedProjects project:getStudent().getStudentComplitedProjects())
		{
			if(x==1)
			{
				setProjectId1(project.getProjectId());
				setProjectTitle1(project.getProjectTitle());
				setProjectDescription1(project.getProjectDescription());
				setProjectYear1(project.getProjectYear());
				
			}
			else if(x==2)
			{
				setProjectId2(project.getProjectId());
				setProjectTitle2(project.getProjectTitle());
				setProjectDescription2(project.getProjectDescription());
				setProjectYear2(project.getProjectYear());
				
			}
			else
			{
				
			}
			x++;
				
			
		}
		
		int y=1;
		for(StudentOtherQulification otherQulification:getStudent().getStudentOtherQulification())
		{
			if(y==1)
			{
				setOtherQulificationId1(otherQulification.getOtherQulificationId());
				setOtherQulification1(otherQulification.getDescription());
				
			}
			else if(y==2)
			{
				setOtherQulificationId2(otherQulification.getOtherQulificationId());
				setOtherQulification2(otherQulification.getDescription());
				
			}
			
			y++;
		}


/*		//set values to project
		if(getStudentComplitedProjects().isEmpty()!=true)
		{
			if(getStudentComplitedProjects().get(0)!=null)
			{
				setProjectId1(studentComplitedProjects.get(0).getProjectId());
				setProjectTitle1(studentComplitedProjects.get(0).getProjectTitle());
				setProjectDescription1(studentComplitedProjects.get(0).getProjectDescription());
				setProjectYear1(studentComplitedProjects.get(0).getProjectYear());
			}
			
			if(getStudentComplitedProjects().get(1)!=null)
			{
				setProjectId2(studentComplitedProjects.get(1).getProjectId());
				setProjectTitle2(studentComplitedProjects.get(1).getProjectTitle());
				setProjectDescription2(studentComplitedProjects.get(1).getProjectDescription());
				setProjectYear2(studentComplitedProjects.get(1).getProjectYear());
				
			}
			
		}*/
		



		return SUCCESS;
	}
	


	//this method is used to check student login and redirect to the password change jsp this mthod is not 
	//for this clz but updating unregister clz have validation so add to this clz
	public String execute()
	{
		// to redirect direct access actions  without login
		if (str==null) {			
			return ERROR;
				
		}
		
		
		return SUCCESS;
		
	}

	

	
	
	
	
	
	
	
	
	
	
	
	//getters and setters
	public int getOtherQulificationId1() {
		return otherQulificationId1;
	}



	public void setOtherQulificationId1(int otherQulificationId1) {
		this.otherQulificationId1 = otherQulificationId1;
	}



	public int getOtherQulificationId2() {
		return otherQulificationId2;
	}



	public void setOtherQulificationId2(int otherQulificationId2) {
		this.otherQulificationId2 = otherQulificationId2;
	}

	public int getProjectId1() {
		return projectId1;
	}

	public void setProjectId1(int projectId1) {
		this.projectId1 = projectId1;
	}

	public int getProjectId2() {
		return projectId2;
	}

	public void setProjectId2(int projectId2) {
		this.projectId2 = projectId2;
	}
	
	public String getOtherQulification1() {
		return otherQulification1;
	}

	public void setOtherQulification1(String otherQulification1) {
		this.otherQulification1 = otherQulification1;
	}

	public String getOtherQulification2() {
		return otherQulification2;
	}

	public void setOtherQulification2(String otherQulification2) {
		this.otherQulification2 = otherQulification2;
	}

/*	public List<StudentComplitedProjects> getStudentComplitedProjects() {
		return studentComplitedProjects;
	}

	public void setStudentComplitedProjects(
			List<StudentComplitedProjects> studentComplitedProjects) {
		this.studentComplitedProjects = studentComplitedProjects;
	}*/
	public String getProjectTitle1() {
		return projectTitle1;
	}

	public void setProjectTitle1(String projectTitle1) {
		this.projectTitle1 = projectTitle1;
	}

	public String getProjectDescription1() {
		return projectDescription1;
	}

	public void setProjectDescription1(String projectDescription1) {
		this.projectDescription1 = projectDescription1;
	}

	public String getProjectYear1() {
		return projectYear1;
	}

	public void setProjectYear1(String projectYear1) {
		this.projectYear1 = projectYear1;
	}

	public String getProjectTitle2() {
		return projectTitle2;
	}

	public void setProjectTitle2(String projectTitle2) {
		this.projectTitle2 = projectTitle2;
	}

	public String getProjectDescription2() {
		return projectDescription2;
	}

	public void setProjectDescription2(String projectDescription2) {
		this.projectDescription2 = projectDescription2;
	}

	public String getProjectYear2() {
		return projectYear2;
	}

	public void setProjectYear2(String projectYear2) {
		this.projectYear2 = projectYear2;
	}


	public User getUser() {
		return user;
	}




	public void setUser(User user) {
		this.user = user;
	}




	public Map getSession() {
		return session;
	}




	public void setSession(Map session) {
		this.session = session;
	}






	public ApplicationContext getContext() {
		return context;
	}




	public void setContext(ApplicationContext context) {
		this.context = context;
	}


	public UpdateStudent getUpdateStudent() {
		return updateStudent;
	}

	public void setUpdateStudent(UpdateStudent updateStudent) {
		this.updateStudent = updateStudent;
	}
	
	public Student getStudent() {
		return student;
	}




	public void setStudent(Student student) {
		this.student = student;
	}





}
