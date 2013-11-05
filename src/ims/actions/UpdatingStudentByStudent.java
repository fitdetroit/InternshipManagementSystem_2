package ims.actions;

import java.io.File;

import org.apache.commons.io.FileUtils;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.apache.commons.lang3.ObjectUtils.Null;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import ims.business.RegisterStudent;
import ims.business.UpdateStudent;
import ims.data.Student;
import ims.data.StudentCompany;
import ims.data.StudentComplitedProjects;
import ims.data.StudentOtherQulification;
import ims.data.StudentProfessionalExp;
import ims.data.User;

public class UpdatingStudentByStudent extends ActionSupport {

	private String role;
	private String page;
	private String menu;
	
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
	private String appliedCompany1;
	private String appliedCompany2;
	private String appliedCompany3;
	private String appliedCompany4;
	private String appliedCompany5;
	private String password =null;
	private String password2;
	private String conPassword;
	
	
	private int projectId1=0;
	private int projectId2=0;
	private int projectId3=0;
	private int projectId4=0;
	private int projectId5=0;
	private String projectTitle1;
	private String projectDescription1;
	private String projectYear1;
	private String projectTitle2;
	private String projectDescription2;
	private String projectYear2;
	
	private String projectTitle3;
	private String projectDescription3;
	private String projectYear3;
	private String projectTitle4;
	private String projectDescription4;
	private String projectYear4;
	private String projectTitle5;
	private String projectDescription5;
	private String projectYear5;

	private int otherQulificationId1;
	private int otherQulificationId2;
	private int otherQulificationId3;
	private int otherQulificationId4;
	private int otherQulificationId5;
	private String otherQulification1;
	private String otherQulification2;
	private String otherQulification3;
	private String otherQulification4;
	private String otherQulification5;


	private int professionalExpId1;
	private String companyName1;
	private String briefDescription1;
	private int professionalExpId2;
	private String companyName2;
	private String briefDescription2;
	private int professionalExpId3;
	private String companyName3;
	private String briefDescription3;
	private int professionalExpId4;
	private String companyName4;
	private String briefDescription4;
	private int professionalExpId5;
	private String companyName5;
	private String briefDescription5;

	//to upload profile picture
	private File ProfilePicture;
	private String ProfilePictureFileName;
	private String ProfilePictureContentType;
	private String myFileFileName;
	private String destPath;
	
	
	
	
	


	





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
		
		
		
//System.out.println("its herer now");
		
		Map session;
		session = ActionContext.getContext().getSession();
		String userName = (String) session.get("userName");

		setStudent(updateStudent.getDetails(userName));
		
		
		
		// uploading profile picture

        if(!(ProfilePicture==null))
        {
    		myFileFileName=getStudentUserName();
    		myFileFileName=myFileFileName.concat(".jpg");
    		System.out.println(myFileFileName);
    				
    		ServletContext servletContext = ServletActionContext.getServletContext(); 
    		String dataDir = servletContext.getRealPath("/WEB-INF/../assets/img/ProfileImages"); 
    	      destPath = dataDir;
    	      
    	      File existingFile = new File(dataDir, myFileFileName);
    	      existingFile.delete();
  	      try{
 	     	 System.out.println("Src File name: " + ProfilePicture);
 	     	 System.out.println("Dst File name: " + myFileFileName);
 	     	    	 
 	     	 File destFile  = new File(destPath, myFileFileName);
 	    	 FileUtils.copyFile(ProfilePicture, destFile);
 	  
 	      }catch(IOException e){
 	         e.printStackTrace();
 	         return ERROR;
 	      }
 		
        	
        }
		
		

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
		//if(getGpaSemester1()!=0)
		student.setGpaSemester1(getGpaSemester1());
		//if(getGpaSemester2()!=0)
		student.setGpaSemester2(getGpaSemester2());
		//if(getGpaSemester3()!=0)
		student.setGpaSemester3(getGpaSemester3());



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
		
		
		
	      //To save student done projects in studentComplitedProject table
		
/*			StudentComplitedProjects studentComplitedProjects1= new StudentComplitedProjects();
			//studentComplitedProjects1.setProjectId(getProjectId1());
			studentComplitedProjects1.setProjectTitle(getProjectTitle1());
			studentComplitedProjects1.setProjectDescription(getProjectDescription1());
			studentComplitedProjects1.setProjectYear(getProjectYear1());
			studentComplitedProjects1.setStudent(getStudent());
	
			StudentComplitedProjects studentComplitedProjects2 = new StudentComplitedProjects();
			//studentComplitedProjects2.setProjectId(getProjectId2());
			studentComplitedProjects2.setProjectTitle(getProjectTitle2());
			studentComplitedProjects2.setProjectDescription(getProjectDescription2());
			studentComplitedProjects2.setProjectYear(getProjectYear2());
			studentComplitedProjects2.setStudent(getStudent());*/
		
			
			
			for (StudentComplitedProjects project : getStudent().getStudentComplitedProjects()) {
				
				if(project.getProjectId()==getProjectId1())
				{
					project.setProjectTitle(getProjectTitle1());
					project.setProjectDescription(getProjectDescription1());
					project.setProjectYear(getProjectYear1());
					project.setStudent(getStudent());
					
				}
				if(project.getProjectId()==getProjectId2())
				{
					project.setProjectTitle(getProjectTitle2());
					project.setProjectDescription(getProjectDescription2());
					project.setProjectYear(getProjectYear2());
					project.setStudent(getStudent());
				}
				
				if(project.getProjectId()==getProjectId3())
				{
					project.setProjectTitle(getProjectTitle3());
					project.setProjectDescription(getProjectDescription3());
					project.setProjectYear(getProjectYear3());
					project.setStudent(getStudent());
				}
				
				if(project.getProjectId()==getProjectId4())
				{
					project.setProjectTitle(getProjectTitle4());
					project.setProjectDescription(getProjectDescription4());
					project.setProjectYear(getProjectYear4());
					project.setStudent(getStudent());
				}
				if(project.getProjectId()==getProjectId5())
				{
					project.setProjectTitle(getProjectTitle5());
					project.setProjectDescription(getProjectDescription5());
					project.setProjectYear(getProjectYear5());
					project.setStudent(getStudent());
				}
				
			}
			
			
			
			
			for (StudentOtherQulification otherQulification :getStudent().getStudentOtherQulification())
			{
				if(otherQulification.getOtherQulificationId()==getOtherQulificationId1())
				{
					otherQulification.setDescription(otherQulification1);
					otherQulification.setStudent(getStudent());
					
				}
				
				if(otherQulification.getOtherQulificationId()==getOtherQulificationId2())
				{
					otherQulification.setDescription(otherQulification2);
					otherQulification.setStudent(getStudent());
					
				}
				if(otherQulification.getOtherQulificationId()==getOtherQulificationId3())
				{
					otherQulification.setDescription(otherQulification3);
					otherQulification.setStudent(getStudent());
					
				}
				if(otherQulification.getOtherQulificationId()==getOtherQulificationId4())
				{
					otherQulification.setDescription(otherQulification4);
					otherQulification.setStudent(getStudent());
					
				}
				if(otherQulification.getOtherQulificationId()==getOtherQulificationId5())
				{
					otherQulification.setDescription(otherQulification5);
					otherQulification.setStudent(getStudent());
					
				}
				
				
			}
			
			for (StudentProfessionalExp studentProfessionalExp :getStudent().getStudentProfessionalExp())
			{
				if(studentProfessionalExp.getProfessionalExpId()==getProfessionalExpId1())
				{
					studentProfessionalExp.setCompanyName(getCompanyName1());
					studentProfessionalExp.setBriefDescription(getBriefDescription1());
					
				}
				if(studentProfessionalExp.getProfessionalExpId()==getProfessionalExpId2())
				{
					studentProfessionalExp.setCompanyName(getCompanyName2());
					studentProfessionalExp.setBriefDescription(getBriefDescription2());
					
				}
				if(studentProfessionalExp.getProfessionalExpId()==getProfessionalExpId3())
				{
					studentProfessionalExp.setCompanyName(getCompanyName3());
					studentProfessionalExp.setBriefDescription(getBriefDescription3());
					
				}
				if(studentProfessionalExp.getProfessionalExpId()==getProfessionalExpId4())
				{
					studentProfessionalExp.setCompanyName(getCompanyName4());
					studentProfessionalExp.setBriefDescription(getBriefDescription4());
					
				}
				if(studentProfessionalExp.getProfessionalExpId()==getProfessionalExpId5())
				{
					studentProfessionalExp.setCompanyName(getCompanyName5());
					studentProfessionalExp.setBriefDescription(getBriefDescription5());
					
				}
				
			}
			
			
			

			

		
/*		
			StudentOtherQulification  studentOtherQulification1= new StudentOtherQulification();
			studentOtherQulification1.setDescription(otherQulification1);
			studentOtherQulification1.setStudent(getStudent());
			
			StudentOtherQulification  studentOtherQulification2= new StudentOtherQulification();
			studentOtherQulification2.setDescription(otherQulification2);
			studentOtherQulification2.setStudent(getStudent());*/
			
			//getStudent().getStudentOtherQulification().add(studentOtherQulification1);
			//getStudent().getStudentOtherQulification().add(studentOtherQulification2);
		
		


		updateStudent.updateStudent(getStudentUserName(), student, user);
		
		
/*		if(getProjectId1()!=0)
		updateStudent.updateStudentComplitedProjects(getProjectId1(),studentComplitedProjects1);
		else {
			updateStudent.studentCompliteProjectsSave(studentComplitedProjects1);
		}
		if(getProjectId2()!=0)
		updateStudent.updateStudentComplitedProjects(getProjectId2(),studentComplitedProjects2);
		else {
			updateStudent.studentCompliteProjectsSave(studentComplitedProjects2);
		}*/
		

		return SUCCESS;

	}
	

/*	public void validate()  {
		

		if (getPassword().length() != 0) {
		

			if (!(getPassword().equals(getConPassword()))) {
				addFieldError("conPassword", "password not match");

			}

		}

	}
	*/
	
	

	

//gettser and setter
	
	
	public int getOtherQulificationId1() {
		return otherQulificationId1;
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


	public void setOtherQulificationId1(int otherQulificationId1) {
		this.otherQulificationId1 = otherQulificationId1;
	}


	public int getOtherQulificationId2() {
		return otherQulificationId2;
	}


	public void setOtherQulificationId2(int otherQulificationId2) {
		this.otherQulificationId2 = otherQulificationId2;
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

	public int getProjectId2() {
		return projectId2;
	}

	public int getProjectId1() {
		return projectId1;
	}


	public void setProjectId1(int projectId1) {
		this.projectId1 = projectId1;
	}


	public void setProjectId2(int projectId2) {
		this.projectId2 = projectId2;
	}
	public String getProjectYear2() {
		return projectYear2;
	}

	public void setProjectYear2(String projectYear2) {
		this.projectYear2 = projectYear2;
	}


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

	
	public String getMenu() {
		return menu;
	}


	public void setMenu(String menu) {
		this.menu = menu;
	}


	public int getProjectId3() {
		return projectId3;
	}


	public void setProjectId3(int projectId3) {
		this.projectId3 = projectId3;
	}


	public int getProjectId4() {
		return projectId4;
	}


	public void setProjectId4(int projectId4) {
		this.projectId4 = projectId4;
	}


	public int getProjectId5() {
		return projectId5;
	}


	public void setProjectId5(int projectId5) {
		this.projectId5 = projectId5;
	}


	public String getProjectTitle3() {
		return projectTitle3;
	}


	public void setProjectTitle3(String projectTitle3) {
		this.projectTitle3 = projectTitle3;
	}


	public String getProjectDescription3() {
		return projectDescription3;
	}


	public void setProjectDescription3(String projectDescription3) {
		this.projectDescription3 = projectDescription3;
	}


	public String getProjectYear3() {
		return projectYear3;
	}


	public void setProjectYear3(String projectYear3) {
		this.projectYear3 = projectYear3;
	}


	public String getProjectTitle4() {
		return projectTitle4;
	}


	public void setProjectTitle4(String projectTitle4) {
		this.projectTitle4 = projectTitle4;
	}


	public String getProjectDescription4() {
		return projectDescription4;
	}


	public void setProjectDescription4(String projectDescription4) {
		this.projectDescription4 = projectDescription4;
	}


	public String getProjectYear4() {
		return projectYear4;
	}


	public void setProjectYear4(String projectYear4) {
		this.projectYear4 = projectYear4;
	}


	public String getProjectTitle5() {
		return projectTitle5;
	}


	public void setProjectTitle5(String projectTitle5) {
		this.projectTitle5 = projectTitle5;
	}


	public String getProjectDescription5() {
		return projectDescription5;
	}


	public void setProjectDescription5(String projectDescription5) {
		this.projectDescription5 = projectDescription5;
	}


	public String getProjectYear5() {
		return projectYear5;
	}


	public void setProjectYear5(String projectYear5) {
		this.projectYear5 = projectYear5;
	}


	public int getOtherQulificationId3() {
		return otherQulificationId3;
	}


	public void setOtherQulificationId3(int otherQulificationId3) {
		this.otherQulificationId3 = otherQulificationId3;
	}


	public int getOtherQulificationId4() {
		return otherQulificationId4;
	}


	public void setOtherQulificationId4(int otherQulificationId4) {
		this.otherQulificationId4 = otherQulificationId4;
	}


	public int getOtherQulificationId5() {
		return otherQulificationId5;
	}


	public void setOtherQulificationId5(int otherQulificationId5) {
		this.otherQulificationId5 = otherQulificationId5;
	}


	public String getOtherQulification3() {
		return otherQulification3;
	}


	public void setOtherQulification3(String otherQulification3) {
		this.otherQulification3 = otherQulification3;
	}


	public String getOtherQulification4() {
		return otherQulification4;
	}


	public void setOtherQulification4(String otherQulification4) {
		this.otherQulification4 = otherQulification4;
	}


	public String getOtherQulification5() {
		return otherQulification5;
	}


	public void setOtherQulification5(String otherQulification5) {
		this.otherQulification5 = otherQulification5;
	}


	public int getProfessionalExpId1() {
		return professionalExpId1;
	}


	public void setProfessionalExpId1(int professionalExpId1) {
		this.professionalExpId1 = professionalExpId1;
	}


	public String getCompanyName1() {
		return companyName1;
	}


	public void setCompanyName1(String companyName1) {
		this.companyName1 = companyName1;
	}


	public String getBriefDescription1() {
		return briefDescription1;
	}


	public void setBriefDescription1(String briefDescription1) {
		this.briefDescription1 = briefDescription1;
	}


	public int getProfessionalExpId2() {
		return professionalExpId2;
	}


	public void setProfessionalExpId2(int professionalExpId2) {
		this.professionalExpId2 = professionalExpId2;
	}


	public String getCompanyName2() {
		return companyName2;
	}


	public void setCompanyName2(String companyName2) {
		this.companyName2 = companyName2;
	}


	public String getBriefDescription2() {
		return briefDescription2;
	}


	public void setBriefDescription2(String briefDescription2) {
		this.briefDescription2 = briefDescription2;
	}


	public int getProfessionalExpId3() {
		return professionalExpId3;
	}


	public void setProfessionalExpId3(int professionalExpId3) {
		this.professionalExpId3 = professionalExpId3;
	}


	public String getCompanyName3() {
		return companyName3;
	}


	public void setCompanyName3(String companyName3) {
		this.companyName3 = companyName3;
	}


	public String getBriefDescription3() {
		return briefDescription3;
	}


	public void setBriefDescription3(String briefDescription3) {
		this.briefDescription3 = briefDescription3;
	}


	public int getProfessionalExpId4() {
		return professionalExpId4;
	}


	public void setProfessionalExpId4(int professionalExpId4) {
		this.professionalExpId4 = professionalExpId4;
	}


	public String getCompanyName4() {
		return companyName4;
	}


	public void setCompanyName4(String companyName4) {
		this.companyName4 = companyName4;
	}


	public String getBriefDescription4() {
		return briefDescription4;
	}


	public void setBriefDescription4(String briefDescription4) {
		this.briefDescription4 = briefDescription4;
	}


	public int getProfessionalExpId5() {
		return professionalExpId5;
	}


	public void setProfessionalExpId5(int professionalExpId5) {
		this.professionalExpId5 = professionalExpId5;
	}


	public String getCompanyName5() {
		return companyName5;
	}


	public void setCompanyName5(String companyName5) {
		this.companyName5 = companyName5;
	}


	public String getBriefDescription5() {
		return briefDescription5;
	}


	public void setBriefDescription5(String briefDescription5) {
		this.briefDescription5 = briefDescription5;
	}


	public String getMyFileFileName() {
		return myFileFileName;
	}


	public void setMyFileFileName(String myFileFileName) {
		this.myFileFileName = myFileFileName;
	}


	public String getDestPath() {
		return destPath;
	}


	public void setDestPath(String destPath) {
		this.destPath = destPath;
	}


	public HttpServletRequest getRequest() {
		return request;
	}


	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}


	public HttpSession getSession() {
		return session;
	}


	public void setSession(HttpSession session) {
		this.session = session;
	}


	public String getStr() {
		return str;
	}


	public void setStr(String str) {
		this.str = str;
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

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}
