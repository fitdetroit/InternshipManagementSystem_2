package ims.actions;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.ObjectUtils.Null;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import ims.business.UpdateStudent;
import ims.data.Student;
import ims.data.User;

public class UpdatingStudent extends ActionSupport {

	
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
	private String password =null;
	private String password2;
	private String conPassword;
	



	private List<Student> list = null;


	Student student = new Student();
	User user = new User();

	// to redirect direct access actions without login
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session = request.getSession();
	String str = (String) session.getAttribute("userName");
	

	ApplicationContext context = new ClassPathXmlApplicationContext("Spring.xml");
	UpdateStudent updateStudent = (UpdateStudent) context.getBean("UpdateStudent");
	
	

	
	// this method is used to update student profile 
	public String updateStudent() throws NoSuchAlgorithmException  {
		
		// to redirect direct access actions  without login
		if (str==null) {
			return ERROR;
				
		}
		
		
		

		
		Map session;
		session = ActionContext.getContext().getSession();
		String userName = (String) session.get("userName");

		setList(updateStudent.getDetails(userName));
		
		student=list.get(0);

		if(getStudentUserName().length()!=0)
		student.setStudentUserName(getStudentUserName());
		if(getNameInFull().length()!=0)
		student.setNameInFull(getNameInFull());
		if(getNameWithInitials().length()!=0)
		student.setNameWithInitials(getNameWithInitials());
		if(getGender().length()!=0)
		student.setGender(getGender());
		if(getDateOfBirth().length()!=0)
		student.setDateOfBirth(getDateOfBirth());
		if(getMaritalStatus().length()!=0)
		student.setMaritalStatus(getMaritalStatus());
		if(getPermanentAddress().length()!=0)
		student.setPermanentAddress(getPermanentAddress());
		if(getMobile1().length()!=0)
		student.setMobile1(getMobile1());
		if(getMobile2().length()!=0)
		student.setMobile2(getMobile2());
		if(getTelephone().length()!=0)
		student.setTelephone(getTelephone());
		if(getEmail().length()!=0)
		student.setEmail(getEmail());
		if(getSchool().length()!=0)
		student.setSchool(getSchool());
		if(getAlSubject1().length()!=0)
		student.setAlSubject1(getAlSubject1());
		if(getAlSubject2().length()!=0)
		student.setAlSubject2(getAlSubject2());
		if(getAlSubject3().length()!=0)
		student.setAlSubject3(getAlSubject3());
		if(getAlResult1().length()!=0)
		student.setAlResult1(getAlResult1());
		if(getAlResult2().length()!=0)
		student.setAlResult2(getAlResult2());
		if(getAlResult3().length()!=0)
		student.setAlResult3(getAlResult3());
		if(getDigreeTitle().length()!=0)
		student.setDigreeTitle(getDigreeTitle());
		if(getYearOfAdmission()!=0)
		student.setYearOfAdmission(getYearOfAdmission());
		if(getGpaSemester1()!=0)
		student.setGpaSemester1(getGpaSemester1());
		if(getGpaSemester2()!=0)
		student.setGpaSemester2(getGpaSemester2());
		if(getGpaSemester3()!=0)
		student.setGpaSemester3(getGpaSemester3());
		if(getWorkingExperience().length()!=0)
		student.setWorkingExperience(getWorkingExperience());
		if(getProjects().length()!=0)
		student.setProjects(getProjects());


		user.setUserName(getStudentUserName());
		user.setType('s');

		if (getPassword().length() == 0) {
			user.setPassword(getPassword2());
		} else {
			///password encrptation
			 MessageDigest md = MessageDigest.getInstance("MD5");
		        md.update(password.getBytes());
		 
		        byte byteData[] = md.digest();
		 
		        //convert the byte to hex format method 1
		        StringBuffer sb = new StringBuffer();
		        for (int i = 0; i < byteData.length; i++) {
		         sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
		        }
		 
		       // System.out.println("Digest(in hex format):: " + sb.toString());
			user.setPassword(sb.toString());
		}


		updateStudent.updateStudent(getStudentUserName(), student, user);

		return SUCCESS;

	}
	

	
	
	
	public void validate()  {
		

		if (getPassword().length() != 0) {

			if (!(getPassword().equals(getConPassword()))) {
				addFieldError("conPassword", "password not match");

			}

		}

	}

	
	
	
	
	// getters and setters

	public List<Student> getList() {
		return list;
	}

	public void setList(List<Student> list) {
		this.list = list;
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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPassword2() {
		return password2;
	}

	public void setPassword2(String password2) {
		this.password2 = password2;
	}

	public String getConPassword() {
		return conPassword;
	}

	public void setConPassword(String conPassword) {
		this.conPassword = conPassword;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}
