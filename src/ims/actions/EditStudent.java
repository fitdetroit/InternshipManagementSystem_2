package ims.actions;


import ims.business.UpdateStudent;
import ims.data.Student;
import ims.data.User;

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
	
	private List<Student> list = null;
	private List<User> list2 = null;
	private Student student;
	private User user;

	Map session;
	
	// to redirect direct access actions  without login
	HttpServletRequest request=ServletActionContext.getRequest();
	HttpSession session2=request.getSession();
	String str=(String)session2.getAttribute("userName");
	
	
	private String studentUserName;
	private String nameInFull;
	private String nameWithInitials;
	private String gender;
	private String dateOfBirth;
	private String maritalStatus;
	private String permanentAddress;
	private String mobile1;
	private String mobile2;
	private String telephone;
	private String email;
	private String school;
	private String alSubject1;
	private String alSubject2;
	private String alSubject3;
	private String alResult1;
	private String alResult2;
	private String alResult3;
	private String digreeTitle;
	private int yearOfAdmission;
	private float gpaSemester1;
	private float gpaSemester2;
	private float gpaSemester3;
	private String workingExperience;
	private String projects;
	private String appliedCompany1;
	private String appliedCompany2;
	private String appliedCompany3;
	private String appliedCompany4;
	private String appliedCompany5;
	private String password;
	private String password2;



	ApplicationContext context = new ClassPathXmlApplicationContext("Spring.xml");
	UpdateStudent updateStudent = (UpdateStudent) context.getBean("UpdateStudent");
	
	

	
	public String editDetails() {
		
		
		// to redirect direct access actions  without login
		if (str==null) {
			return ERROR;
				
		}
		
		session = ActionContext.getContext().getSession();
		String userName = (String) session.get("userName");

		setList(getUpdateStudent().getDetails(userName));
		setList2(getUpdateStudent().getDetails2(userName));
		student=list.get(0);
		user=list2.get(0);
		
		

		setStudentUserName(student.getStudentUserName());
		setNameInFull(student.getNameInFull());
		setNameWithInitials(student.getNameWithInitials());
		setGender(student.getGender());
		setDateOfBirth(student.getDateOfBirth());
		setMaritalStatus(student.getMaritalStatus());
		setPermanentAddress(student.getPermanentAddress());
		setMobile1(student.getMobile1());
		setMobile2(student.getMobile2());
		setTelephone(student.getTelephone());
		setEmail(student.getEmail());
		setSchool(student.getSchool());
		setAlSubject1(student.getAlSubject1());
		setAlSubject2(student.getAlSubject2());
		setAlSubject3(student.getAlSubject3());
		setAlResult1(student.getAlResult1());
		setAlResult2(student.getAlResult2());
		setAlResult3(student.getAlResult3());
		setDigreeTitle(student.getDigreeTitle());
		setYearOfAdmission(student.getYearOfAdmission());
		setGpaSemester1(student.getGpaSemester1());
		setGpaSemester2(student.getGpaSemester2());
		setGpaSemester3(student.getGpaSemester3());
		setWorkingExperience(student.getWorkingExperience());
		setProjects(student.getProjects());
		setAppliedCompany1(student.getAppliedCompany1());
		setAppliedCompany2(student.getAppliedCompany2());
		setAppliedCompany3(student.getAppliedCompany3());
		setAppliedCompany4(student.getAppliedCompany4());
		setAppliedCompany5(student.getAppliedCompany5());
		setPassword(user.getPassword());
		setPassword2(user.getPassword());


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

	
	
	
	public List<User> getList2() {
		return list2;
	}




	public void setList2(List<User> list2) {
		this.list2 = list2;
	}




	//getters and setters
	
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




	public String getStudentUserName() {
		return studentUserName;
	}




	public void setStudentUserName(String studentUserName) {
		this.studentUserName = studentUserName;
	}




	public String getNameInFull() {
		return nameInFull;
	}




	public void setNameInFull(String nameInFull) {
		this.nameInFull = nameInFull;
	}




	public String getNameWithInitials() {
		return nameWithInitials;
	}




	public void setNameWithInitials(String nameWithInitials) {
		this.nameWithInitials = nameWithInitials;
	}




	public String getGender() {
		return gender;
	}




	public void setGender(String gender) {
		this.gender = gender;
	}




	public String getDateOfBirth() {
		return dateOfBirth;
	}




	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}




	public String getMaritalStatus() {
		return maritalStatus;
	}




	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}




	public String getPermanentAddress() {
		return permanentAddress;
	}




	public void setPermanentAddress(String permanentAddress) {
		this.permanentAddress = permanentAddress;
	}




	public String getMobile1() {
		return mobile1;
	}




	public void setMobile1(String mobile1) {
		this.mobile1 = mobile1;
	}




	public String getMobile2() {
		return mobile2;
	}




	public void setMobile2(String mobile2) {
		this.mobile2 = mobile2;
	}




	public String getTelephone() {
		return telephone;
	}




	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}




	public String getEmail() {
		return email;
	}




	public void setEmail(String email) {
		this.email = email;
	}




	public String getSchool() {
		return school;
	}




	public void setSchool(String school) {
		this.school = school;
	}




	public String getAlSubject1() {
		return alSubject1;
	}




	public void setAlSubject1(String alSubject1) {
		this.alSubject1 = alSubject1;
	}




	public String getAlSubject2() {
		return alSubject2;
	}




	public void setAlSubject2(String alSubject2) {
		this.alSubject2 = alSubject2;
	}




	public String getAlSubject3() {
		return alSubject3;
	}




	public void setAlSubject3(String alSubject3) {
		this.alSubject3 = alSubject3;
	}




	public String getAlResult1() {
		return alResult1;
	}




	public void setAlResult1(String alResult1) {
		this.alResult1 = alResult1;
	}




	public String getAlResult2() {
		return alResult2;
	}




	public void setAlResult2(String alResult2) {
		this.alResult2 = alResult2;
	}




	public String getAlResult3() {
		return alResult3;
	}




	public void setAlResult3(String alResult3) {
		this.alResult3 = alResult3;
	}




	public String getDigreeTitle() {
		return digreeTitle;
	}




	public void setDigreeTitle(String digreeTitle) {
		this.digreeTitle = digreeTitle;
	}




	public int getYearOfAdmission() {
		return yearOfAdmission;
	}




	public void setYearOfAdmission(int yearOfAdmission) {
		this.yearOfAdmission = yearOfAdmission;
	}




	public float getGpaSemester1() {
		return gpaSemester1;
	}




	public void setGpaSemester1(float gpaSemester1) {
		this.gpaSemester1 = gpaSemester1;
	}




	public float getGpaSemester2() {
		return gpaSemester2;
	}




	public void setGpaSemester2(float gpaSemester2) {
		this.gpaSemester2 = gpaSemester2;
	}




	public float getGpaSemester3() {
		return gpaSemester3;
	}




	public void setGpaSemester3(float gpaSemester3) {
		this.gpaSemester3 = gpaSemester3;
	}




	public String getWorkingExperience() {
		return workingExperience;
	}




	public void setWorkingExperience(String workingExperience) {
		this.workingExperience = workingExperience;
	}




	public String getProjects() {
		return projects;
	}




	public void setProjects(String projects) {
		this.projects = projects;
	}




	public String getAppliedCompany1() {
		return appliedCompany1;
	}




	public void setAppliedCompany1(String appliedCompany1) {
		this.appliedCompany1 = appliedCompany1;
	}




	public String getAppliedCompany2() {
		return appliedCompany2;
	}




	public void setAppliedCompany2(String appliedCompany2) {
		this.appliedCompany2 = appliedCompany2;
	}




	public String getAppliedCompany3() {
		return appliedCompany3;
	}




	public void setAppliedCompany3(String appliedCompany3) {
		this.appliedCompany3 = appliedCompany3;
	}




	public String getAppliedCompany4() {
		return appliedCompany4;
	}




	public void setAppliedCompany4(String appliedCompany4) {
		this.appliedCompany4 = appliedCompany4;
	}




	public String getAppliedCompany5() {
		return appliedCompany5;
	}




	public void setAppliedCompany5(String appliedCompany5) {
		this.appliedCompany5 = appliedCompany5;
	}




	public ApplicationContext getContext() {
		return context;
	}




	public void setContext(ApplicationContext context) {
		this.context = context;
	}
	public String getPassword2() {
		return password2;
	}




	public void setPassword2(String password2) {
		this.password2 = password2;
	}
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	public List<Student> getList() {
		return list;
	}

	public void setList(List<Student> list) {
		this.list = list;
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
