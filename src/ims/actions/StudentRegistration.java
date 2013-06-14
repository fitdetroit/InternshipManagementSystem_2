package ims.actions;

import java.io.File;

import javax.servlet.ServletContext;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.opensymphony.xwork2.ActionSupport;

import ims.business.RegisterStudent;
import ims.data.Application;
import ims.data.Student;
import ims.data.StudentCompany;
import ims.data.StudentComplitedProjects;
import ims.data.User;

public class StudentRegistration extends ActionSupport {
	
	private Student student = new Student();
	
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
	
	
	StudentCompany studentCompany1 = new StudentCompany();
	StudentCompany studentCompany2 = new StudentCompany();
	StudentCompany studentCompany3 = new StudentCompany();
	StudentCompany studentCompany4 = new StudentCompany();
	StudentCompany studentCompany5 = new StudentCompany();
	
	Application application1 = new Application();
	Application application2 = new Application();
	Application application3 = new Application();
	Application application4 = new Application();
	Application application5 = new Application();
	

	//to upload profile picture
	private File ProfilePicture;
	private String ProfilePictureFileName;
	private String ProfilePictureContentType;


	


	public String registration() {
		
		// uploading profile picture
		ServletContext servletContext = ServletActionContext.getServletContext(); 
		if (ProfilePicture != null) {
			String dataDir = servletContext.getRealPath("/WEB-INF/data"); 
			File savedFile = new File(dataDir, getStudentUserName()+".gif"); 
			ProfilePicture.renameTo(savedFile); } 
		else {
			System.out.println("its not working");
		}
		
		
		
		


		ApplicationContext context = new ClassPathXmlApplicationContext("Spring.xml");
		RegisterStudent registerStudent = (RegisterStudent) context.getBean("RegisterStudent");
		

		// set velues to new student object
		getStudent().setStudentUserName(getStudentUserName());
		getStudent().setNameInFull(getNameInFull());
		getStudent().setNameWithInitials(getNameWithInitials());
		getStudent().setGender(getGender());
		getStudent().setDateOfBirth(getDateOfBirth());
		getStudent().setMaritalStatus(getMaritalStatus());
		getStudent().setPermanentAddress(getPermanentAddress());
		getStudent().setMobile1(getMobile1());
		getStudent().setMobile2(getMobile2());
		getStudent().setTelephone(getTelephone());
		getStudent().setEmail(getEmail());
		getStudent().setSchool(getSchool());
		getStudent().setAlSubject1(getAlSubject1());
		getStudent().setAlSubject2(getAlSubject2());
		getStudent().setAlSubject3(getAlSubject3());
		getStudent().setAlResult1(getAlResult1());
		getStudent().setAlResult2(getAlResult2());
		getStudent().setAlResult3(getAlResult3());
		getStudent().setDigreeTitle(getDigreeTitle());
		getStudent().setYearOfAdmission(getYearOfAdmission());
		getStudent().setGpaSemester1(getGpaSemester1());
		getStudent().setGpaSemester2(getGpaSemester2());
		getStudent().setGpaSemester3(getGpaSemester3());
		getStudent().setWorkingExperience(getWorkingExperience());
		getStudent().setProjects(getProjects());
/*		getStudent().setAppliedCompany1(getAppliedCompany1());
		getStudent().setAppliedCompany2(getAppliedCompany2());
		getStudent().setAppliedCompany3(getAppliedCompany3());
		getStudent().setAppliedCompany4(getAppliedCompany4());
		getStudent().setAppliedCompany5(getAppliedCompany5());*/
		


		// to save student in student table 
		registerStudent.saveStudent(student);
	
		
		// folowing several if eles statements used to save applied company list in appliaction table
		
		if(!getAppliedCompany1().equals("NOT Select"))
		{
			
			// to get company username from company name
			String name= registerStudent.getCompanyUserName(getAppliedCompany1());
			
			studentCompany1.setStudentId(getStudentUserName());
			studentCompany1.setCompanyId(name);
			
			
			application1.setStudentCompany(studentCompany1);
			application1.setState("pending");
			

			
			registerStudent.AppliedCompanySave(application1);
			
		}
		if(!getAppliedCompany2().equals("NOT Select"))
		{
			// to get company username from company name
			String name= registerStudent.getCompanyUserName(getAppliedCompany2());
			
			studentCompany2.setStudentId(getStudentUserName());
			studentCompany2.setCompanyId(name);
			
			application2.setStudentCompany(studentCompany2);
			application2.setState("pending");
			
			registerStudent.AppliedCompanySave(application2);
			
		}
		if(!getAppliedCompany3().equals("NOT Select"))
		{
			// to get company username from company name
			String name= registerStudent.getCompanyUserName(getAppliedCompany3());
			
			studentCompany3.setStudentId(getStudentUserName());
			studentCompany3.setCompanyId(name);
			
			application3.setStudentCompany(studentCompany3);
			application3.setState("pending");
			
			registerStudent.AppliedCompanySave(application3);
			
		}
		if(!getAppliedCompany4().equals("NOT Select"))
		{
			// to get company username from company name
			String name= registerStudent.getCompanyUserName(getAppliedCompany4());
			
			studentCompany4.setStudentId(getStudentUserName());
			studentCompany4.setCompanyId(name);
			
			application4.setStudentCompany(studentCompany4);
			application4.setState("pending");
			
			registerStudent.AppliedCompanySave(application4);
			
		}
		if(!getAppliedCompany5().equals("NOT Select"))
		{
			// to get company username from company name
			String name= registerStudent.getCompanyUserName(getAppliedCompany5());
			
			studentCompany5.setStudentId(getStudentUserName());
			studentCompany5.setCompanyId(name);
			
			application5.setStudentCompany(studentCompany5);
			application5.setState("pending");
			
			registerStudent.AppliedCompanySave(application5);
			
		
			
		}
		
		

		
		return SUCCESS;

	}
	
	
	
	
	
	
	
	
	// getters and setters
	public File getProfilePicture() {
		return ProfilePicture;
	}


	public void setProfilePicture(File profilePicture) {
		ProfilePicture = profilePicture;
	}

	public String getProfilePictureFileName() {
		return ProfilePictureFileName;
	}

	public void setProfilePictureFileName(String profilePictureFileName) {
		ProfilePictureFileName = profilePictureFileName;
	}

	public String getProfilePictureContentType() {
		return ProfilePictureContentType;
	}

	public void setProfilePictureContentType(String profilePictureContentType) {
		ProfilePictureContentType = profilePictureContentType;
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



	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}







}
